public class fromJSON{
	public cls_results[] results;
	public String status;	//OK
	public class cls_results {
		public cls_address_components[] address_components;
		public String formatted_address;	//Ameerpet, Hyderabad, Andhra Pradesh, India
		public cls_geometry geometry;
		public cls_types[] types;
	}
	public class cls_address_components {
		public String long_name;	//Ameerpet
		public String short_name;	//Ameerpet
		public cls_types[] types;
	}
	public class cls_types {
		public String a;	//s
		public String b;	//u
		public String c;	//b
		public String d;	//l
		public String e;	//o
		public String f;	//c
		public String g;	//a
		public String h;	//l
		public String i;	//i
		public String j;	//t
		public String k;	//y
	}
	public class cls_geometry {
		public cls_bounds bounds;
		public cls_location location;
		public String location_type;	//APPROXIMATE
		public cls_viewport viewport;
	}
	public class cls_bounds {
		public cls_northeast northeast;
		public cls_southwest southwest;
	}
	public class cls_northeast {
		public Double lat;	//17.4443959
		public Double lng;	//78.4572069
	}
	public class cls_southwest {
		public Double lat;	//17.4339761
		public Double lng;	//78.4320639
	}
	public class cls_location {
		public Double lat;	//17.4348017
		public Double lng;	//78.448011
	}
	public class cls_viewport {
		public cls_northeast northeast;
		public cls_southwest southwest;
	}
	
	
}