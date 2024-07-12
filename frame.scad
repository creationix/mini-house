// Concrete foundation
color("gray") translate([ 0, 0, -4 ]) cube([ 32 * 12, 24 * 12, 4 ]);

// back wall
translate([ 0, 24 * 12 - 5.5, 0 ]) wall(32 * 12);

// front wall
translate([ 32 * 12, 5.5, 0 ]) rotate([ 0, 0, 180 ]) wall(32 * 12);

// left wall
translate([ 5.5, 0, 0 ]) rotate([ 0, 0, 90 ]) wall(24 * 12);

// right wall
translate([ 32 * 12 - 5.5, 24 * 12, 0 ]) rotate([ 0, 0, 270 ]) wall(24 * 12);

// wall between two bathrooms
translate([ 5.5, 5 * 12 + 5.5, 0 ]) wall(9 * 12 - 5.5);
// Stub by washer/dryer
translate([ 5.5 + 9 * 12, 5 * 12 + 5.5, 0 ]) wall(36);
// public bathroom door
translate([ 5.5 + 9 * 12, 5.5, 0 ]) rotate([ 0, 0, 90 ]) wall(6);
translate([ 5.5 + 9 * 12, 5.5 + 6 + 32, 0 ]) rotate([ 0, 0, 90 ]) wall(5 * 12 - 32 - 6 + 5.5 + 5 * 12);
// wall between bathroom and bedroom
translate([ 5.5, 5 * 12 + 5.5 + 5 * 12 + 5.5, 0 ]) wall(6);
translate([ 5.5 + 6 + 32, 5 * 12 + 5.5 + 5 * 12 + 5.5, 0 ]) wall(16 * 12 - 6 - 32 - 6 - 36 - 5.5);
translate([ 16 * 12 - 6, 5 * 12 + 5.5 + 5 * 12 + 5.5, 0 ]) wall(6 + 5.5);
// right side of bedroom
translate([ 16 * 12 + 5.5, 5.5 * 3 + 5 * 12 * 2, 0 ]) rotate([ 0, 0, 90 ]) wall(24 * 12 - 5.5 * 4 - 5 * 12 * 2);
module wall(len)
{
    color("tan")
    {
        // bottom plate
        cube([ len, 5.5, 1.5 ]);
        // top plates
        translate([ 0, 0, 8 * 12 - 1.5 ]) cube([ len, 5.5, 1.5 ]);
        translate([ 0, 0, 8 * 12 - 3 ]) cube([ len, 5.5, 1.5 ]);
        // first stud
        translate([ 0, 0, 1.5 ]) cube([ 1.5, 5.5, 8 * 12 - 4.5 ]);
        // last stud
        translate([ len - 1.5, 0, 1.5 ]) cube([ 1.5, 5.5, 8 * 12 - 4.5 ]);
        for (i = [16 - .75:16:len - 3])
            translate([ i, 0, 1.5 ]) cube([ 1.5, 5.5, 8 * 12 - 4.5 ]);
    }
}