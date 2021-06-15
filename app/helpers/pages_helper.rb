module PagesHelper
    def cat_path(n)
        if n == 1
            return pages_playstation_path
        elsif n == 2
            return pages_xbox_path
        elsif n == 3
            return pages_nintendo_path
        else n == 4
            return pages_gamerpc_path
        end
    end
end
