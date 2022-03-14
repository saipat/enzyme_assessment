def compare_hash(hash1, hash2)

  is_equal = hash1.eql?(hash2)
  values_diff = {}
  keys_diff = {}

  return is_equal if is_equal

  unless is_equal
    hash1.keys.each do |k,v|
      if (hash2[k] && hash1[k] != hash2[k])
        values_diff[k] = hash2[k]
      end

      keys_diff[k] = hash1[k] unless hash2.keys.include?(k)
    end

    hash2.keys.each do |k,v|
      keys_diff[k] = hash2[k] unless hash1.keys.include?(k)
    end
  end

  return keys_diff.merge(values_diff)
end

# # testCases
# hash1 = {
#   a: '1'
# }
# hash2 = {
#   a: '1'
# }
#
# puts compare_hash(hash1, hash2);
# # --------------
# hash1 = {
#   a: '1'
# }
# hash2 = {
#   a: '2'
# }
#
# puts compare_hash(hash1, hash2);
# # --------------
# hash1 = {
#   a: '1'
# }
# hash2 = {
#
# }
#
# puts compare_hash(hash1, hash2);
# # ---------------
#
# hash1 = {
#   a: '1',
#   b: '1',
#   c: true,
#   hash: {
#     q: 1
#   }
# }
# hash2 = {
#   b: '2',
#   c: '3',
#   a: [1,2,3],
#   num: 2,
#   art: false
# }
#
# puts compare_hash(hash1, hash2);
