# coding: utf-8
require "bundler/setup"
Bundler.require

doc = File.open(ARGV[0]) { |f| Nokogiri::XML(f) }
xpath_query = ARGV[1] || '//Record[@type="HKQuantityTypeIdentifierBloodGlucose"]'

doc.remove_namespaces!
records = doc.xpath(xpath_query).map do |r|
  "#{r['startDate']}, #{r['value']}, #{r['unit']}"
end
puts records.sort.join("\n")
