//Generated by Cap'n Proto compiler, DO NOT EDIT.
//source: catrank.capnp

module capnproto.benchmark.catrankschema;

import capnproto;

struct SearchResultList
{
public:
	static immutable structSize = cast(immutable)StructSize(0, 1);
	
	static struct Builder
	{
	public:
		this(SegmentBuilder* segment, int data, int pointers, int dataSize, short pointerCount)
		{
			b = StructBuilder(segment, data, pointers, dataSize, pointerCount);
		}
		
		
		auto asReader()
		{
			return b.asReader!Reader();
		}
		
		bool hasResults()
		{
			return !b._pointerFieldIsNull(0);
		}
		StructList!(.SearchResult).Builder getResults()
		{
			return b._getPointerField!(StructList!(.SearchResult))(0, null, 0);
		}
		void setResults(StructList!(.SearchResult).Reader value)
		{
			b._setPointerField!(StructList!(.SearchResult))(0, value);
		}
		StructList!(.SearchResult).Builder initResults(int size)
		{
			return b._initPointerField!(StructList!(.SearchResult))(0, size);
		}
		
	public:
		StructBuilder b;
	}
	
	static struct Reader
	{
	public:
		this(SegmentReader* segment, int data, int pointers, int dataSize, short pointerCount, int nestingLimit)
		{
			b = StructReader(segment, data, pointers, dataSize, pointerCount, nestingLimit);
		}
		
		bool hasResults()
		{
			return !b._pointerFieldIsNull(0);
		}
		StructList!(.SearchResult).Reader getResults()
		{
			return b._getPointerField!(StructList!(.SearchResult))(0, null, 0);
		}
		
	public:
		StructReader b;
	}
	
}

struct SearchResult
{
public:
	static immutable structSize = cast(immutable)StructSize(1, 2);
	
	static struct Builder
	{
	public:
		this(SegmentBuilder* segment, int data, int pointers, int dataSize, short pointerCount)
		{
			b = StructBuilder(segment, data, pointers, dataSize, pointerCount);
		}
		
		
		auto asReader()
		{
			return b.asReader!Reader();
		}
		
		bool hasUrl()
		{
			return !b._pointerFieldIsNull(0);
		}
		Text.Builder getUrl()
		{
			return b._getPointerField!Text(0, null, 0, 0);
		}
		void setUrl(Text.Reader value)
		{
			b._setPointerField!Text(0, value);
		}
		void setUrl(string value)
		{
			b._setPointerField!Text(0, Text.Reader(value));
		}
		Text.Builder initUrl(int size)
		{
			return b._initPointerField!Text(0, size);
		}
		
		double getScore()
		{
			return b._getDoubleField(0);
		}
		void setScore(double value)
		{
			b._setDoubleField(0, value);
		}
		
		bool hasSnippet()
		{
			return !b._pointerFieldIsNull(1);
		}
		Text.Builder getSnippet()
		{
			return b._getPointerField!Text(1, null, 0, 0);
		}
		void setSnippet(Text.Reader value)
		{
			b._setPointerField!Text(1, value);
		}
		void setSnippet(string value)
		{
			b._setPointerField!Text(1, Text.Reader(value));
		}
		Text.Builder initSnippet(int size)
		{
			return b._initPointerField!Text(1, size);
		}
		
	public:
		StructBuilder b;
	}
	
	static struct Reader
	{
	public:
		this(SegmentReader* segment, int data, int pointers, int dataSize, short pointerCount, int nestingLimit)
		{
			b = StructReader(segment, data, pointers, dataSize, pointerCount, nestingLimit);
		}
		
		bool hasUrl()
		{
			return !b._pointerFieldIsNull(0);
		}
		string getUrl()
		{
			return b._getPointerField!Text(0, null, 0, 0).toString();
		}
		
		double getScore()
		{
			return b._getDoubleField(0);
		}
		
		bool hasSnippet()
		{
			return !b._pointerFieldIsNull(1);
		}
		string getSnippet()
		{
			return b._getPointerField!Text(1, null, 0, 0).toString();
		}
		
	public:
		StructReader b;
	}
	
}

struct Schemas
{
public:
	__gshared static SegmentReader b_9e10f22b24271858 = GeneratedClassSupport.decodeRawBytes([
	  0x0,0x0,0x0,0x0,0x5,0x0,0x6,0x0,
	  0x58,0x18,0x27,0x24,0x2b,0xf2,0x10,0x9e,
	  0xe,0x0,0x0,0x0,0x1,0x0,0x0,0x0,
	  0xba,0x9a,0xf7,0x7f,0xe3,0xb8,0xbe,0x82,
	  0x1,0x0,0x7,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x15,0x0,0x0,0x0,0xfa,0x0,0x0,0x0,
	  0x21,0x0,0x0,0x0,0x7,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x1d,0x0,0x0,0x0,0x3f,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x63,0x61,0x74,0x72,0x61,0x6e,0x6b,0x2e,
	  0x63,0x61,0x70,0x6e,0x70,0x3a,0x53,0x65,
	  0x61,0x72,0x63,0x68,0x52,0x65,0x73,0x75,
	  0x6c,0x74,0x4c,0x69,0x73,0x74,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x1,0x0,0x1,0x0,
	  0x4,0x0,0x0,0x0,0x3,0x0,0x4,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x1,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0xd,0x0,0x0,0x0,0x42,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x8,0x0,0x0,0x0,0x3,0x0,0x1,0x0,
	  0x24,0x0,0x0,0x0,0x2,0x0,0x1,0x0,
	  0x72,0x65,0x73,0x75,0x6c,0x74,0x73,0x0,
	  0xe,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x3,0x0,0x1,0x0,
	  0x10,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0xf5,0x17,0xfc,0x21,0xcd,0xc0,0x80,0xac,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0xe,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	]);
	__gshared static SegmentReader b_ac80c0cd21fc17f5 = GeneratedClassSupport.decodeRawBytes([
	  0x0,0x0,0x0,0x0,0x5,0x0,0x6,0x0,
	  0xf5,0x17,0xfc,0x21,0xcd,0xc0,0x80,0xac,
	  0xe,0x0,0x0,0x0,0x1,0x0,0x1,0x0,
	  0xba,0x9a,0xf7,0x7f,0xe3,0xb8,0xbe,0x82,
	  0x2,0x0,0x7,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x15,0x0,0x0,0x0,0xda,0x0,0x0,0x0,
	  0x21,0x0,0x0,0x0,0x7,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x1d,0x0,0x0,0x0,0xaf,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x63,0x61,0x74,0x72,0x61,0x6e,0x6b,0x2e,
	  0x63,0x61,0x70,0x6e,0x70,0x3a,0x53,0x65,
	  0x61,0x72,0x63,0x68,0x52,0x65,0x73,0x75,
	  0x6c,0x74,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x1,0x0,0x1,0x0,
	  0xc,0x0,0x0,0x0,0x3,0x0,0x4,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x1,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x45,0x0,0x0,0x0,0x22,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x40,0x0,0x0,0x0,0x3,0x0,0x1,0x0,
	  0x4c,0x0,0x0,0x0,0x2,0x0,0x1,0x0,
	  0x1,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x1,0x0,0x1,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x49,0x0,0x0,0x0,0x32,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x44,0x0,0x0,0x0,0x3,0x0,0x1,0x0,
	  0x50,0x0,0x0,0x0,0x2,0x0,0x1,0x0,
	  0x2,0x0,0x0,0x0,0x1,0x0,0x0,0x0,
	  0x0,0x0,0x1,0x0,0x2,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x4d,0x0,0x0,0x0,0x42,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x48,0x0,0x0,0x0,0x3,0x0,0x1,0x0,
	  0x54,0x0,0x0,0x0,0x2,0x0,0x1,0x0,
	  0x75,0x72,0x6c,0x0,0x0,0x0,0x0,0x0,
	  0xc,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0xc,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x73,0x63,0x6f,0x72,0x65,0x0,0x0,0x0,
	  0xb,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0xb,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x73,0x6e,0x69,0x70,0x70,0x65,0x74,0x0,
	  0xc,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0xc,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	]);
}
