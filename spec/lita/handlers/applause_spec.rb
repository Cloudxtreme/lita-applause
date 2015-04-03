require "spec_helper"

describe Lita::Handlers::Applause, lita_handler: true do
  it { is_expected.to route_command("applause").to(:applause) }
  it { is_expected.to route_command("applaud").to(:applause) }
  it { is_expected.to route_command("bravo").to(:applause) }
  it { is_expected.to route_command("slow clap").to(:applause) }
end
