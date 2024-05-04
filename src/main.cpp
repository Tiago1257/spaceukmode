#include <Geode/Geode.hpp>

using namespace geode::prelude;

#include <Geode/modify/EndLevelLayer.hpp>

class $modify(EndLevelLayer) {
	void customSetup() {
		EndLevelLayer::customSetup();
		auto watermark = this->m_mainLayer->getChildByID("level-complete-text");
		watermark->setScale(.752f);
	};
};
