process (clk) begin
  if rising_edge(clk) then
    if enable = '1' then
      if count = max_count then
        count <= 0; -- Wrap around to 0
      else
        count <= count + 1;
      end if;
    end if;
  end if;
end process;