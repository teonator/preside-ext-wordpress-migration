component {
	this.name = "Wordpress Migration Test Suite";

	this.mappings[ '/tests'   ] = ExpandPath( "/" );
	this.mappings[ '/testbox' ] = ExpandPath( "/testbox" );
	this.mappings[ '/wordpress-migration'  ] = ExpandPath( "../" );

	setting requesttimeout=60000;
}
