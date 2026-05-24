// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { IERC20 } from '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { Spawner } from '../Spawner.sol';
import { SpawnManager } from '../SpawnManager.sol';
import { ExecutorManager } from '../../Helpers/ExecutorManager.sol';
import { IActiveChecker } from '../IActiveChecker.sol';

contract TadpoleClaimsActiveChecker is IActiveChecker {
    address public deployer;

    constructor() {
        deployer = msg.sender;
    }

    function isActive(address _toCheck) external view returns (bool) {
        return(_toCheck == deployer);
    }
}

contract TadpoleClaimerCoin is IERC20, ERC20, ExecutorManager {
    constructor() ERC20("TadpoleClaimer", "TDPLCLAIM") {
        _addExecutor(msg.sender);
    }

    function tadpoleMint(address to, uint256 amount) onlyExecutor() external {
        _mint(to, amount);
    }
    
    function burnFrom(address from, uint256 amount) onlyExecutor() external {
        _burn(from, amount);
    }
}

contract TadpoleClaimer is ExecutorManager {
    TadpoleClaimsActiveChecker public checker;
    TadpoleClaimerCoin public tadpoleClaimerCoin;

    constructor() {
        _addExecutor(msg.sender);
        checker = new TadpoleClaimsActiveChecker();
        tadpoleClaimerCoin = new TadpoleClaimerCoin();
    }

    function _run(SpawnManager manager, IERC20 toClaim, address sendTo) internal {
        manager.updateConfig(checker, toClaim, tadpoleClaimerCoin, 1, 1, 10 ** 18);

        uint256 balanceOfManager = toClaim.balanceOf(address(manager));

        tadpoleClaimerCoin.tadpoleMint(address(this), balanceOfManager);
        manager.createSpawn(balanceOfManager);
        manager.spawnThrough(manager.spawnIndex(), balanceOfManager);

        //require(toClaim.balanceOf(address(this)) == 0, "SELF_MG_BL");
        require(toClaim.balanceOf(address(manager)) == 0, "MG_BL");
        require(toClaim.transfer(sendTo, balanceOfManager), "NO_XFER");
    }

    function run(SpawnManager manager, IERC20[] calldata toClaim, address sendTo) onlyExecutor() external {
        tadpoleClaimerCoin.approve(address(manager), type(uint256).max);

        for (uint256 i = 0; i < toClaim.length; i++) {
            _run(manager, toClaim[i], sendTo);
        }

        tadpoleClaimerCoin.burnFrom(address(manager), tadpoleClaimerCoin.balanceOf(address(manager)));

        require(tadpoleClaimerCoin.balanceOf(address(manager)) == 0, "CL_C_MG_0");
        require(tadpoleClaimerCoin.balanceOf(address(this)) == 0, "CL_C_MG_0");
    }
}
