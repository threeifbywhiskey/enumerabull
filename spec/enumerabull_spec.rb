require 'spec_helper'

describe 'Enumerabull' do
  Enumerable.instance_methods.each do |meth|
    it "should add Enumerable#{meth} to Kernel" do
      Kernel.should respond_to meth
    end
  end
end

describe 'Kernel.all?' do
  it 'should behave like Enumerable#all?' do
    all?(:even?, [2, 4, 6]).should be_true
  end
end

describe 'Kernel.any?' do
  it 'should behave like Enumerable#any?' do
    any?(:odd?, [2, 4, 6]).should be_false
  end
end

describe 'Kernel.chunk' do
  it 'should behave like Enumerable#chunk' do
    chunk(:even?, 1..10).to_a.should == (1..10).chunk(&:even?).to_a
  end
end

describe 'Kernel.collect' do
  it 'should behave like Enumerable#collect' do
    collect(-> x { x + 1 }, 1..3).should == [2, 3, 4]
  end
end

describe 'Kernel.collect_concat' do
  it 'should behave like Enumerable#collect_concat' do
    collect_concat(-> x { [x - 1, x + 1] }, 1..2).should == [0, 2, 1, 3]
  end
end

describe 'Kernel.count' do
  it 'should behave like Enumerable#count' do
    count(:even?, 1..10).should == 5
  end
end

describe 'Kernel.cycle' do
  it 'should behave like Enumerable#cycle' do
    cycle(2, [1, 2]).to_a.should == [1, 2, 1, 2]
  end
end

describe 'Kernel.detect' do
  it 'should behave like Enumerable#detect' do
    detect(:even?, [1, 3, 4]).should == 4
  end
end

describe 'Kernel.drop' do
  it 'should behave like Enumerable#drop' do
    drop(2, 1..4).should == [3, 4]
  end
end

describe 'Kernel.drop_while' do
  it 'should behave like Enumerable#drop_while' do
    drop_while(-> x { x < 5 }, 1..5).should == [5]
  end
end

describe 'Kernel.each_cons' do
  it 'should behave like Enumerable#each_cons' do
    each_cons(2, 1..10).to_a.should == (1..10).each_cons(2).to_a
  end
end

describe 'Kernel.each_entry' do
  it 'should behave like Enumerable#each_entry' do
    each_entry(1..3).to_a.should == (1..3).each_entry.to_a
  end
end

describe 'Kernel.each_slice' do
  it 'should behave like Enumerable#each_slice' do
    each_slice(2, 1..6).to_a.should == (1..6).each_slice(2).to_a
  end
end

describe 'Kernel.each_with_index' do
  it 'should behave like Enumerable#each_with_index' do
    each_with_index(1..3).to_a.should == (1..3).each_with_index.to_a
  end
end

describe 'Kernel.each_with_object' do
  it 'should behave like Enumerable#each_with_object' do
    each_with_object({}, 1..3).to_a.should == (1..3).each_with_object({}).to_a
  end
end

describe 'Kernel.entries' do
  it 'should behave like Enumerable#entries' do
    entries(1..3).should == (1..3).entries
  end
end

describe 'Kernel.find' do
  it 'should behave like Enumerable#find' do
    find(:even?, [1, 3, 4]).should == 4
  end
end

describe 'Kernel.find_all' do
  it 'should behave like Enumerable#find_all' do
    find_all(:even?, 1..6).should == [2, 4, 6]
  end
end

describe 'Kernel.find_index' do
  it 'should behave like Enumerable#find_index' do
    find_index(:even?, [1, 3, 4]).should == 2
  end
end

describe 'Kernel.first' do
  it 'should behave like Enumerable#first' do
    first([1, 2, 3]).should == 1
  end
end

describe 'Kernel.flat_map' do
  it 'should behave like Enumerable#flat_map' do
    flat_map(-> x { [x - 1, x + 1] }, 1..2).should == [0, 2, 1, 3]
  end
end

describe 'Kernel.grep' do
  it 'should behave like Enumerable#grep' do
    grep(Symbol, [1, :a, 2, :b]).should == [:a, :b]
  end
end

describe 'Kernel.group_by' do
  it 'should behave like Enumerable#group_by' do
    group_by(:even?, 1..4).values.should == [[1, 3], [2, 4]]
  end
end

describe 'Kernel.include?' do
  it 'should behave like Enumerable#include?' do
    include?(2, 1..3).should be_true
  end
end

describe 'Kernel.inject' do
  it 'should behave like Enumerable#inject' do
    inject(:+, 1..3).should == 6
  end
end

describe 'Kernel.map' do
  it 'should behave like Enumerable#map' do
    map(:to_s, 1..3).should == %w[1 2 3]
  end
end

describe 'Kernel.max' do
  it 'should behave like Enumerable#max' do
    max(1..3).should == 3
  end
end

describe 'Kernel.max_by' do
  it 'should behave like Enumerable#max_by' do
    max_by(:size, %w[a bb ccc]).should == 'ccc'
  end
end

describe 'Kernel.member?' do
  it 'should behave like Enumerable#member?' do
    member?(2, 1..3).should be_true
  end
end

describe 'Kernel.min' do
  it 'should behave like Enumerable#min' do
    min(1..3).should == 1
  end
end

describe 'Kernel.min_by' do
  it 'should behave like Enumerable#min_by' do
    min_by(:size, %w[a bb ccc]).should == 'a'
  end
end

describe 'Kernel.minmax' do
  it 'should behave like Enumerable#minmax' do
    minmax(1..5).should == [1, 5]
  end
end

describe 'Kernel.minmax_by' do
  it 'should behave like Enumerable#minmax_by' do
    minmax_by(:size, %w[a bb ccc]).should == %w[a ccc]
  end
end

describe 'Kernel.none?' do
  it 'should behave like Enumerable#none?' do
    none?([false, nil]).should be_true
  end
end

describe 'Kernel.one?' do
  it 'should behave like Enumerable#one?' do
    one?([true, false, nil]).should be_true
  end
end

describe 'Kernel.partition' do
  it 'should behave like Enumerable#partition' do
    partition(:odd?, 1..4).should == [[1, 3], [2, 4]]
  end
end

describe 'Kernel.reduce' do
  it 'should behave like Enumerable#reduce' do
    reduce(:-, 0, 1..3).should == -6
  end
end

describe 'Kernel.reject' do
  it 'should behave like Enumerable#reject' do
    reject(:odd?, 1..4).should == [2, 4]
  end
end

describe 'Kernel.reverse_each' do
  it 'should behave like Enumerable#reverse_each' do
    reverse_each([[3, 4], [1, 2]]).to_a.should == [[1, 2], [3, 4]]
  end
end

describe 'Kernel.select' do
  it 'should behave like Enumerable#select' do
    select(:even?, 1..4).should == [2, 4]
  end
end

describe 'Kernel.slice_before' do
  it 'should behave like Enumerable#slice_before' do
    slice_before(:even?, 1..4).to_a.should == [[1], [2, 3], [4]]
  end
end

describe 'Kernel.sort' do
  it 'should behave like Enumerable#sort' do
    sort([3, 2, 1]).should == [1, 2, 3]
  end
end

describe 'Kernel.sort_by' do
  it 'should behave like Enumerable#sort_by' do
    sort_by(:size, %w[ccc bb a]).should == %w[a bb ccc]
  end
end

describe 'Kernel.take' do
  it 'should behave like Enumerable#take' do
    take(2, 1..5).should == [1, 2]
  end
end

describe 'Kernel.take_while' do
  it 'should behave like Enumerable#take_while' do
    take_while(:even?, [2, 4, 5]).should == [2, 4]
  end
end

describe 'Kernel.to_a' do
  it 'should behave like Enumerable#to_a' do
    to_a(1..3).should == [1, 2, 3]
  end
end

describe 'Kernel.zip' do
  it 'should behave like Enumerable#zip' do
    zip([1, 2], [:a, :b]).should == [[:a, 1], [:b, 2]]
  end
end
