-- File: main_ada_tasks2_01.adb
-- Date: Sun 21 Feb 2021 12:00:52 PM +08
-- Author: WRY wruslandr@gmail.com
-- ========================================================
with Ada.Text_IO;
with Ada.Real_Time; use Ada.Real_Time;

with pkg_ada_dtstamp;
with pkg_ada_three_tasks;

-- ========================================================
procedure main_ada_tasks2_01
    with SPARK_Mode => on
is 

  -- RENAMING STANDARD ADA PACKAGES FOR CONVENIENCE
   package ATIO    renames Ada.Text_IO;
   package ART     renames Ada.Real_Time;
   
   -- RENAMING USER-DEFINED ADA PACKAGES FOR CONVENIENCE
   package PADTS   renames pkg_ada_dtstamp;
   package PATT    renames pkg_ada_three_tasks;
   
begin
   
   PADTS.dtstamp; ATIO.Put_Line ("Bismillah 3 times WRY");
   PADTS.dtstamp; ATIO.Put_Line ("Running inside GNAT Studio Community");

   -- =====================================================   
   -- Introduce Ada tasks
   -- =====================================================
   -- Example of a processor embedded into a car, which is composed of the following tasks:
   -- 1. A task displays every 100 milliseconds the current speed of the car.
   -- 2. A task reads a speed sensor every 250 milliseconds.
   -- 3. A task runs an engine monitoring program every 500 milliseconds.
   -- tsk_display_speed
   -- tsk_read_speed
   -- tsk_monitor_engine
  
   ATIO.New_Line;
   PATT.exec_three_tasks;
   
   ATIO.New_Line;
   PADTS.dtstamp; ATIO.Put_Line ("Alhamdulillah 3 times WRY");
   
-- ========================================================   
end main_ada_tasks2_01;

-- EXECUTION ==============================================
