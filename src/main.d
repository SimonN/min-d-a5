import std.stdio;

public import allegro5.allegro;

int main()
{
	writeln("Starting min-d-a5, a minimal D/Allegro 5 program.");
	int returnCode = al_run_allegro(() { return myAlMain(); });
	writeln("Exiting min-d-a5 with return code ", returnCode, ".");
	return returnCode;
}

int myAlMain()
{
	if (! al_init()) {
		writeln("min-d-a5: Failed to initialize allegro.");
		return -1;
	}

	ALLEGRO_DISPLAY *display = al_create_display(640, 480);
	if (! display) {
		writeln("min-d-a5: Failed to create display.");
		return -1;
	}
	scope (exit) {
		al_destroy_display(display);
	}

	showColors();
	return 0;
}

void showColors()
{
	void showColor(ALLEGRO_COLOR c, string name)
	{
		al_clear_to_color(c);
		al_flip_display();
		writeln("min-d-a5: Now displaying color: ", name);
		al_rest(2.0);
	}
	showColor(al_map_rgb_f(0.8, 0, 0), "Red");
	showColor(al_map_rgb_f(0, 0.7, 0), "Green");
	showColor(al_map_rgb_f(0, 0, 0.9), "Blue");
}
