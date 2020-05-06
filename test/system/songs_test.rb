require "application_system_test_case"

class SongsTest < ApplicationSystemTestCase
  setup do
    @song = songs(:one)
  end

  test "visiting the index" do
    visit songs_url
    assert_selector "h1", text: "Songs"
  end

  test "creating a Song" do
    visit songs_url
    click_on "New Song"

    fill_in "Artist", with: @song.artist_id
    fill_in "Capo", with: @song.capo
    fill_in "High note", with: @song.high_note
    fill_in "Key", with: @song.key
    fill_in "Last performed", with: @song.last_performed
    fill_in "Lyrics", with: @song.lyrics
    fill_in "Status", with: @song.status
    fill_in "Title", with: @song.title
    fill_in "Video", with: @song.video
    click_on "Create Song"

    assert_text "Song was successfully created"
    click_on "Back"
  end

  test "updating a Song" do
    visit songs_url
    click_on "Edit", match: :first

    fill_in "Artist", with: @song.artist_id
    fill_in "Capo", with: @song.capo
    fill_in "High note", with: @song.high_note
    fill_in "Key", with: @song.key
    fill_in "Last performed", with: @song.last_performed
    fill_in "Lyrics", with: @song.lyrics
    fill_in "Status", with: @song.status
    fill_in "Title", with: @song.title
    fill_in "Video", with: @song.video
    click_on "Update Song"

    assert_text "Song was successfully updated"
    click_on "Back"
  end

  test "destroying a Song" do
    visit songs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Song was successfully destroyed"
  end
end
