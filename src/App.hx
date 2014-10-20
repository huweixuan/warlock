import js.JQuery;
import Template;

class App {
  static function main() {
  	var cardtpl = haxe.Resource.getString("card");
    var ct = new Template(cardtpl);
    var ch = ct.execute({
			'cardUserId': 19889889,
			'cardUserNo': '782883939333',
			'cardUserNoFontColor': 'RED',
			'cardUserBgImage': 'http://mc.api.dianping.com/staticfiles/mcimages/bg/mc_card_bg_661.320.png',
			'hotphone': '400-600-7660'
		});
    var card = new JQuery(".card");
    card.html(ch);

    var optstpl = haxe.Resource.getString("opts");
    var ot = new Template(optstpl);
    var blocks = new Blocks();
    var block1 = new Block();
    block1.addBlockItem(new BlockItem(1, 'http://life.qq.com/misc/images/wei_webapp_new/icon_power1.png', '积分：6分'));
    block1.addBlockItem(new BlockItem(1, 'http://life.qq.com/misc/images/wei_webapp_new/icon_power1.png', '积分：6分'));
    block1.addBlockItem(new BlockItem(1, 'http://life.qq.com/misc/images/wei_webapp_new/icon_power1.png', '积分：6分'));
    blocks.addBlock(block1);
    var block2 = new Block();
    block2.addBlockItem(new BlockItem(2, 'http://life.qq.com/misc/images/wei_webapp_new/icon_power1.png', '积分：6分'));
    block2.addBlockItem(new BlockItem(2, 'http://life.qq.com/misc/images/wei_webapp_new/icon_power1.png', '积分：6分'));
    block2.addBlockItem(new BlockItem(2, 'http://life.qq.com/misc/images/wei_webapp_new/icon_power1.png', '积分：6分'));
    blocks.addBlock(block2);
    var oh = ot.execute(blocks);
    var opts = new JQuery(".opts");
    opts.html(oh);
  }
}

class Blocks {
	var blocks : Array<Block>;
	public function new () {
    blocks = new Array<Block>();
  }
  public function addBlock (block) {
    blocks.push(block);
  }
}

class Block {
	var blockItems : Array<BlockItem>;
	public function new () {
    blockItems = new Array<BlockItem>();
  }
  public function addBlockItem (blockItem) {
    blockItems.push(blockItem);
  }
}

class BlockItem {
	var type : Int;
	var icon : String;
	var title : String;
	public function new(type, icon, title) {
    this.type = type;
    this.icon = icon; 
    this.title = title;   
  }

}