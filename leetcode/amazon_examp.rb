#!/user/bin/ruby

def process_logs(logs, threshold)
  # Write your code here
  hash = Hash.new(0)
  result = []
  logs.each do |log|
    selected_log =  log.split(' ')
    sender = selected_log[0]
    receiver =  selected_log[1]
    if receiver != sender
      hash[receiver]+=1
      hash[sender]+=1
    else
      hash[sender]+=1
    end
    if  hash[sender] >= threshold && !result.include?(sender.to_i)
      result.push(sender.to_i)
    end
    if  hash[receiver] >= threshold && !result.include?(receiver.to_i)
      result.push(receiver.to_i)
    end
  end
   result.to_s
end
logs = ["1 2 50", "1 7 70", "1 3 20", "2 2 17"]
logs = ["88 99 200","88 99 300","99 32 100","12 12 15"]
logs = ["1 2 1000", "3 3 1000", "2 1 1000"]
logs = ["527771506 111186861 288101579", "507336886 451913864 466472568", "274673668 56172121 499043961", "507067818 451913864 408769398", "507336886 507067818 689764809", "274673668 831696632 284146974", "274673668 451913864 709332133", "451913864 56890051 199469834", "526393340 646024821 423406367", "615008389 274673668 790373061", "554316372 809815918 651837455", "507336886 615008389 260289772", "615008389 76731002 548804246", "656564087 906342698 873279663", "253313766 753290919 191103431", "274673668 76731002 596739043", "831696632 507067818 5251199", "154194267 658732874 720632769", "56890051 274673668 899126834", "637700023 793696384 508755746", "56890051 56172121 344802494", "451913864 507067818 527459789", "76731002 274673668 770874721", "864250034 864250034 168635902", "507336886 451913864 956650170", "507336886 507067818 803661727", "554316372 791817798 895876766", "131049042 376719871 162247213", "507067818 831696632 237530202", "811497682 63100538 776190400", "507067818 507336886 605094829", "274673668 76731002 452042686", "56172121 831696632 297433872", "864250034 615008389 143576841", "891331683 851362051 711809105", "507336886 274673668 349820788", "816891240 801259225 138398535", "321211429 80068912 660919222", "615008389 274673668 290212005", "855293372 451913864 916478910", "309581888 376679307 791661958", "56890051 56890051 502007115", "718869660 525695655 769164551", "611948363 86215482 309290718", "831696632 451913864 877960152", "507336886 615008389 865307502", "274555361 980027280 947904379", "445111193 87790742 681929261", "451913864 56172121 448927964", "309467897 808623872 469015606", "486270921 226543047 137565354", "831696632 451913864 801095976", "56890051 831696632 576771232", "639793930 181963137 966264614", "766959001 416586784 638991193", "698479963 391957985 595041229", "952789397 142779469 607572904", "507067818 76731002 743307706", "771097814 809043720 165539166", "56890051 507067818 484251131", "367840959 947130171 984439794", "56890051 76731002 352559311", "507336886 56172121 647305357", "507327697 988331486 554151953", "34798966 67233364 778515374", "507336886 507336886 125170296", "855293372 864250034 989122703", "451913864 76731002 696071989", "507067818 507067818 522748036", "73750713 972379732 642338590", "670116400 828958973 738774673", "855293372 56890051 124161121", "272791300 905306209 147348656", "831696632 76731002 554540746", "78927007 602453299 822341280", "386644769 973723585 496203227", "529459882 398034046 649560737", "839176288 649960685 791380638", "948823530 372013379 763084472", "85613955 974654491 67679323", "56890051 507067818 793899109", "56172121 76731002 331924687", "507336886 451913864 718362886", "507336886 615008389 416567596", "831696632 864250034 172558912", "860777366 975374128 130766152", "883682166 37747493 336764372", "842530005 563618035 825236268", "864250034 507336886 981039423", "855293372 76731002 845933707", "310407851 310407851 475629028", "76731002 76731002 285063015", "628256963 771501375 735186985", "56172121 864250034 695389252", "56890051 507336886 813508866", "319587773 347425295 64939079", "855293372 615008389 451127991", "855293372 864250034 801148088", "855293372 507067818 28187546", "451913864 274673668 214192662"]
threshold = 2
puts logs.length
puts process_logs(logs, threshold)
