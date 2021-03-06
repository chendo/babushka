module Babushka
  class BaseDepDefiner < DepDefiner

    accepts_list_for :requires
    accepts_block_for :internal_setup
    accepts_block_for :setup
    accepts_block_for :met?
    accepts_block_for :meet
    accepts_block_for :before
    accepts_block_for :after

    private

    def chooser
      uname
    end

  end
end
