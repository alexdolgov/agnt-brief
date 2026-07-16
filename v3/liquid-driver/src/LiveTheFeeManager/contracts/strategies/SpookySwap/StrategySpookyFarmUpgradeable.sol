// SPDX-License-Identifier: MIT
pragma solidity ^0.6.7;

import "../StrategyGeneralMasterChefBaseUpgradeable.sol";
import "./ISpookyMasterChef.sol";
import "../../interfaces/ISpookyMasterChefV2.sol";

contract StrategySpookyFarmUpgradeable is StrategyGeneralMasterChefBaseUpgradeable {
    // Token addresses
    address public boo;
    address public masterChef;
    string public __NAME__;

    function initialize(
      address depositor,
      address lp,
      uint256 pid,
      address _secondReward,
      string memory _name
    )
      public initializer
    {
      boo = 0x841FAD6EAe12c286d1Fd18d1d525DFfA75C7EFFE;
      masterChef = address(0x18b4f774fdC7BF685daeeF66c2990b1dDd9ea6aD);
      __NAME__ = _name;
      initializeStrategyGeneralMasterChefBase(
        boo,
        _secondReward,
        masterChef,
        pid, // pool id
        lp,
        depositor
      );

      address _lpToken;
      _lpToken = address(ISpookyMasterChefV2(masterChef).lpToken(pid));

      require(lp == _lpToken, "LP address doesn't match!");
    }

    function getHarvestable() external override view returns (uint256) {
        uint256 _pendingReward = ISpookyMasterChef(masterchef).pendingBOO(poolId, address(this));
        return _pendingReward;
    }
}
