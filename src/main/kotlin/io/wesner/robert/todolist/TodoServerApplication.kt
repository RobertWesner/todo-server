package io.wesner.robert.todolist

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class TodoServerApplication

fun main(args: Array<String>) {
    runApplication<TodoServerApplication>(*args)
}
