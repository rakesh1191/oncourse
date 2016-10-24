# OnCourse

OnCourse is an advisement tool that helps students to stay on course
academically.

## Run The Project in Eclipse

1. Clone the Git repository and import it into Eclipse as a Maven project.
2. Create an empty databases and populate it using the following two
   SQL scripts:
   * `src/main/scripts/oncourse-create.sql` - create all the schema
     elements.
   * `src/main/scripts/oncourse-test-insert.sql` - create some
     sample data to play with. Please read the script to see what courses,
     departments, users, and so on are created.
3. Copy `build.properties.sample` to `build.properties`.
4. Change the values in `build.properties` to match your environment. In
   Eclipse, do a `Maven -> Update Project`. 
5. Run the project.
