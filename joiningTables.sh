#!/bin/bash



for name in students_courses.txt; do
ls -l | grep -e students.txt | awk {print '$2'} | cat;
ls -l | grep -e courses.txt | awk {print '$2'} | cat;
done
