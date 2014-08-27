require 'spec_helper'

describe Stop do
  it {should belong_to :location}
  it {should belong_to :route}
end
