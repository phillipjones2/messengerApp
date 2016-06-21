require 'test_helper'

class TodoTest < ActiveSupport::TestCase

  test "should not save todo without a title" do
    todo = Todo.new
    assert_not todo.save
  end

  test "should not save todo with notes and without a title" do
    todo = Todo.new(notes:"b")
    assert_not todo.save
  end

  test "should save todo with a title" do
    todo = Todo.new(title:"a")
    assert todo.save
  end

  test "should save todo with a title without notes" do
    todo = Todo.new(title:"a")
    assert todo.save
  end

  test "should save todo with note and title" do
    todo = Todo.new(title:"a", notes:"b")
    assert todo.save
  end

  test "title should save correctly" do
    todo = Todo.create(title:"a")
    assert_equal("a",todo.title)
  end

  test "notes should save correctly" do
    todo = Todo.create(title:"a", notes:"b")
    assert_equal("b",todo.notes)
  end

  test "notes should not save incorrectly" do
    todo = Todo.create(title:"a", notes:"b")
    assert_not_equal("c",todo.notes)
  end


end
