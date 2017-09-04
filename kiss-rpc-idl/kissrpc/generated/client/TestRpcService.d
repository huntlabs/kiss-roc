module kissrpc.generated.TestRpcService;


import kissrpc.generated.TestRpcInterface;
import kissrpc.generated.TestRpcMessage;

import kissrpc.RpcClient;
import kissrpc.Unit;


class RpcTestService: RpcTestInterface{

	this(RpcClient rpClient){
		RpcBindFunctionMap[2791659981] = typeid(&RpcTestService.getName).toString();
		super(rpClient);
	}

	UserInfo getName(UserInfo userInfo, const RPC_PACKAGE_COMPRESS_TYPE compressType = RPC_PACKAGE_COMPRESS_TYPE.RPCT_NO, const int secondsTimeOut = RPC_REQUEST_TIMEOUT_SECONDS){

		UserInfo ret = super.getNameInterface(userInfo, compressType, secondsTimeOut);
		return ret;
	}


	void getName(UserInfo userInfo, RpcgetNameCallback rpcCallback, const RPC_PACKAGE_COMPRESS_TYPE compressType = RPC_PACKAGE_COMPRESS_TYPE.RPCT_NO, const int secondsTimeOut = RPC_REQUEST_TIMEOUT_SECONDS){

		super.getNameInterface(userInfo, rpcCallback, compressType, secondsTimeOut);
	}


}



