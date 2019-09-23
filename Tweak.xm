%hook SpringBoard

-(void)applicationDidFinishLaunching:(id)application {
	%orig;

	#pragma clang diagnostic push
	#pragma clang diagnostic ignored "-Wdeprecated-declarations"

	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hey there."
	message:@"Your device just resprung. Hope you're cool with that."
	delegate:nil
	cancelButtonTitle:@"I'm cool with that."
	otherButtonTitles:nil];
	[alert show];
	[alert release];

	#pragma clang diagnostic pop
}

%end
