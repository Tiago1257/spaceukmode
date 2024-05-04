#include <Geode/modify/EndLevelLayer.hpp>

using namespace geode::prelude;

class $modify(EndLevelLayer) {
	void customSetup() {
		EndLevelLayer::customSetup();
		if (auto watermark = this->m_mainLayer->getChildByIDRecursive("level-complete-text")) {
			watermark->setScale(.752f);
		}
	};
};