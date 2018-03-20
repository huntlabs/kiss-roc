module rpcgenerate.Greeter.PosFb;
// automatically generated by the FlatBuffers compiler, do not modifymodule rpcgenerate.Greeter.PosFb;

import std.typecons;
import flatbuffers;

struct PosFb {
	mixin Table!PosFb;

  static PosFb getRootAsPosFb(ByteBuffer _bb) {  return PosFb.init_(_bb.get!int(_bb.position()) + _bb.position(), _bb); }
	@property float x() { uint o = __offset(4); return o != 0 ? _buffer.get!float(o + _pos) : 0.0; }
	@property float y() { uint o = __offset(6); return o != 0 ? _buffer.get!float(o + _pos) : 0.0; }
	@property float z() { uint o = __offset(8); return o != 0 ? _buffer.get!float(o + _pos) : 0.0; }

	static uint createPosFb(FlatBufferBuilder builder,float x,float y,float z) {
		builder.startObject(3);
		PosFb.addZ(builder, z);
		PosFb.addY(builder, y);
		PosFb.addX(builder, x);
		return PosFb.endPosFb(builder);
	}

	static void startPosFb(FlatBufferBuilder builder) { builder.startObject(3); }
	static void addX(FlatBufferBuilder builder, float x) { builder.add!float(0, x, 0.0); }
	static void addY(FlatBufferBuilder builder, float y) { builder.add!float(1, y, 0.0); }
	static void addZ(FlatBufferBuilder builder, float z) { builder.add!float(2, z, 0.0); }
	static uint endPosFb(FlatBufferBuilder builder) {
		uint o = builder.endObject();
		return o;
	}
}

