#!/usr/bin/env ruby

# Parse emerald files in docs section of website and add css classes to highlight tokens
class Parser
  # maybe use a gusb with a regex for common things, like h1 .. h2
  def parse(input)
    input.gsub('h1', '<span class="tag">h1</span>')
  end
end
