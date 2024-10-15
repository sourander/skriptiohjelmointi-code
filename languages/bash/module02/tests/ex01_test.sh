

function set_up() {
    PROJECT_DIR=$(cd $(dirname $0)/../..; pwd)
    EXERCISES_DIR=$PROJECT_DIR/exercises
    SCRIPT=$EXERCISES_DIR/ex01.sh
}

function test_hello_world() {

    # Capturing stdout of the script
    actual_output=$(bash ${EXERCISES_DIR}/ex01.sh)

    # Comparing it to the expected output
    assert_same "Hello World!" "$actual_output"
}