﻿module IDL.idl_inerface_create_code;

import std.array : appender;
import std.format;

import IDL.idl_parse_interface;
import IDL.idl_unit;
import std.regex;


class idl_function_arg_code
{
	static string create_server_code(function_arg function_inerface)
	{
		auto strings = appender!string();
		
		auto dlang_var_name = idl_dlang_variable.get(function_inerface.type_name, null);
		
		if(dlang_var_name == null)
		{
			auto dlang_struct_name = idl_struct_list.get(function_inerface.type_name, null);

			if(dlang_struct_name is null)
			{
				throw new Exception("not parse symbol for struct name: " ~ function_inerface.type_name);
			}
		}

		formattedWrite(strings, "\t\t %s %s;\n", function_inerface.type_name, function_inerface.var_name);

		return strings.data;
	}
}

class idl_function_attr_code
{
	static string create_server_interface_code(function_attr function_attr_interface, string inerface_name)
	{
		auto strings = appender!string();
		formattedWrite(strings, "\t void %s_interface(rpc_request req){\n\n", function_attr_interface.func_name);
		
		if(function_attr_interface.ret_type != "void")
		{
			formattedWrite(strings, "\t\t auto resp = new rpc_response(req);\n\n");
		}
		
		foreach(k,v ;function_attr_interface.func_arg_map)
		{
			formattedWrite(strings, idl_function_arg_code.create_server_code(v));
		}
		
		formattedWrite(strings, "\n\n");
		
		auto func_args_strirngs = appender!string();

		for(int i = 0; i < function_attr_interface.func_arg_map.length; i++)
		{
			auto v = function_attr_interface.func_arg_map[i];
			
			if(i == function_attr_interface.func_arg_map.length-1)
				formattedWrite(func_args_strirngs, "%s", v.get_struct_var_name);
			else
				formattedWrite(func_args_strirngs, "%s, ", v.get_struct_var_name);
		}
		
		formattedWrite(strings, "\t\treq.pop(%s);\n\n", replaceAll(func_args_strirngs.data, regex(`\,\s*\,|\,\s$`), ""));

		func_args_strirngs = appender!string();

		for(int i = 0; i< function_attr_interface.func_arg_map.length; i++)
		{
			auto v = function_attr_interface.func_arg_map[i];
			
			if(i == function_attr_interface.func_arg_map.length -1 )
				formattedWrite(func_args_strirngs, "%s", v.get_var_name);
			else
				formattedWrite(func_args_strirngs, "%s, ", v.get_var_name);
		}


		if(function_attr_interface.ret_type == "void")
		{
			formattedWrite(strings, "\t\t(cast(rpc_%s_service)this).%s(%s);\n\n", inerface_name, function_attr_interface.func_name, func_args_strirngs.data);

		}else
		{
			formattedWrite(strings, "\t\tresp.push((cast(rpc_%s_service)this).%s(%s));\n\n", inerface_name, function_attr_interface.func_name, func_args_strirngs.data);
			formattedWrite(strings, "\t\trp_impl.response(resp);\n");
		}
		
		formattedWrite(strings, "\t}\n\n");
		
		return strings.data;
	}
	
	static string create_server_service_code(function_attr function_attr_interface)
	{
		auto strings = appender!string();
		
		auto func_args_strirngs = appender!string();
		
		for(int i = 0; i< function_attr_interface.func_arg_map.length; i++)
		{
			auto v = function_attr_interface.func_arg_map[i];
			
			if(i == function_attr_interface.func_arg_map.length -1 )
				formattedWrite(func_args_strirngs, "%s %s", v.get_type_name, v.get_var_name);
			else
				formattedWrite(func_args_strirngs, "%s %s, ", v.get_type_name, v.get_var_name);
		}

		formattedWrite(strings,"\t%s %s(%s)", function_attr_interface.ret_type, function_attr_interface.func_name, func_args_strirngs.data);
		
		if(function_attr_interface.ret_type == "void")
		{
			formattedWrite(strings,"{\n\n\n\t}\n\n");
			
		}else
		{
			formattedWrite(strings,"{\n\n\n\t\treturn %s\n\t}\n\n", function_attr_interface.ret_type);
		}

		return strings.data;
	}

}


class idl_inerface_dlang_code
{
	static string create_server_code(idl_parse_interface idl_interface)
	{
		auto strings = appender!string();
		
		formattedWrite(strings, "abstract class rpc_%s_interface{ \n\n", idl_interface.interface_name);
		formattedWrite(strings, "\t this(rpc_server rp_server){ \n");
		formattedWrite(strings, "\t\t rp_impl = new rpc_server_impl!(%s_srevice)(rp_server); \n", idl_interface.interface_name);
		
		foreach(k,v; idl_interface.function_list)
		{
			formattedWrite(strings, "\t\t rp_impl.bind_request_callback(\"%s\", &this.%s_interface); \n\n", v.get_func_name, v.get_func_name);
		}
		
		formattedWrite(strings, "\t }\n\n");

		foreach(k,v; idl_interface.function_list)
		{
			formattedWrite(strings, idl_function_attr_code.create_server_interface_code(v, idl_interface.interface_name));
		}
		
		formattedWrite(strings, "\trpc_server_impl!(rpc_%s_service) rp_impl;\n}\n\n\n", idl_interface.interface_name);
		
		formattedWrite(strings, "class rpc_%s_service : rpc_%s_interface{\n\n", idl_interface.interface_name, idl_interface.interface_name);
		formattedWrite(strings, "\tthis(rpc_server rp_server){\n");
		formattedWrite(strings, "\t\tsuper(rp_server);\n");
		formattedWrite(strings, "\t}\n\n");
		

		foreach(k,v; idl_interface.function_list)
		{
			formattedWrite(strings, idl_function_attr_code.create_server_service_code(v));
		}
		
		formattedWrite(strings,"}");
		
		return strings.data;
	}
}