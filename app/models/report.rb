class Report < ApplicationRecord

  def self.get_pass_fail_rate(reports)
    l = reports.group_by {|r| r.result}
    fc, pc = 0
    fc = l['FAIL'].count if l['FAIL']
    pc = l["PASS"].count if l["PASS"]
    out = [
      ["FAIL", fc],
      ["PASS", pc]
    ]
  end

  def self.get_report_by_name(report)
    r = Report.where(name: report)
  end

  def self.get_list_of_reports
    r = Report.distinct.order(:name).pluck(:name)
  end

end
