json.array!(@ab_chapters) do |ab_chapter|
  json.extract! ab_chapter, :id, :abmaster_id, :effectivedate, :chapter, :subchapter
  json.url ab_chapter_url(ab_chapter, format: :json)
end
