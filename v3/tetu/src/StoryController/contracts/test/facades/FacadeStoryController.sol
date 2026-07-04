// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.23;

import "../../core/StoryController.sol";

/// @notice Use additional library to solve sizing issues in FacadeStoryController
library FacadeStoryControllerExLib {
  function handleCustomDataResult(
    IController controller,
    address hero,
    uint80 heroId,
    bytes32[] memory heroCustomDatas,
    bytes32[] memory globalCustomDatas
  ) external {
    IStoryController.StoryActionContext memory context;
    context.heroTokenId = heroId;
    context.heroToken = hero;
    context.controller = controller;
    ControllerContextLib.ControllerContext memory cc = ControllerContextLib.init(controller);
    StoryLib.handleCustomDataResult(cc, context, heroCustomDatas, globalCustomDatas);
  }
}

contract FacadeStoryController is StoryController {
  /// @notice Direct access to handleCustomDataResult in functional tests
  function handleCustomDataResult(
    address hero,
    uint80 heroId,
    bytes32[] memory heroCustomDatas,
    bytes32[] memory globalCustomDatas
  ) external {
    FacadeStoryControllerExLib.handleCustomDataResult(IController(controller()), hero, heroId, heroCustomDatas, globalCustomDatas);

//    IStoryController.StoryActionContext memory context;
//    context.p.heroId = heroId;
//    context.p.hero = hero;
//    context.controller = IController(controller());
//    ControllerContextLib.ControllerContext memory cc = ControllerContextLib.init(context.controller);
//    StoryLib.handleCustomDataResult(cc, context, heroCustomDatas, globalCustomDatas);

  }
}