// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IAccessControl} from "@openzeppelin/contracts/access/IAccessControl.sol";

import {Errors} from "contracts/libraries/Errors.sol";
import {IAutoVault} from "contracts/autovault/interfaces/IAutoVault.sol";
import {IVoter} from "contracts/interfaces/IVoter.sol";
import {IDLMMFeeCollector} from "contracts/DLMM/interfaces/IDLMMFeeCollector.sol";
import {IDLMMFactory} from "contracts/DLMM/interfaces/IDLMMFactory.sol";
import {IDLMMRewarderFactory} from "contracts/DLMM/interfaces/IDLMMRewarderFactory.sol";
import {IGaugeV3} from "contracts/CL/gauge/interfaces/IGaugeV3.sol";
import {IPairFactory} from "contracts/interfaces/IPairFactory.sol";
import {IPair} from "contracts/interfaces/IPair.sol";
import {IR33} from "contracts/interfaces/IR33.sol";
import {IRouter} from "contracts/interfaces/IRouter.sol";
import {IXRam} from "contracts/interfaces/IXRam.sol";

library AccessHubExtension {
    address internal constant LEGACY_ROUTER = 0x9CEE04bDcE127DA7E448A333f006DEFb3d5e38cC;
    bytes32 internal constant LB_HOOKS_MANAGER_ROLE = keccak256("LB_HOOKS_MANAGER_ROLE");

    function acceptFactoryOwnership(IVoter voter) external {
        Ownable2Step(_factory(voter)).acceptOwnership();
    }

    function createPool(IVoter voter, address tokenX, address tokenY, uint24 activeId, uint16 binStep)
        external
        returns (address)
    {
        return address(IDLMMFactory(_factory(voter)).createLBPair(IERC20(tokenX), IERC20(tokenY), activeId, binStep));
    }

    function setTreasury(IVoter voter, address newTreasury) external {
        _feeCollector(voter).setTreasury(newTreasury);
    }

    function setTreasuryFees(IVoter voter, uint256 treasuryFees) external {
        _feeCollector(voter).setTreasuryFees(treasuryFees);
    }

    function setVoter(IVoter voter, address newVoter) external {
        _feeCollector(voter).setVoter(newVoter);
    }

    function setFeeSplit(IVoter voter, address[] calldata pools, uint16[] calldata protocolShares) external {
        require(pools.length == protocolShares.length, Errors.LENGTH_MISMATCH());

        IDLMMFactory dlmmFactory = IDLMMFactory(_factory(voter));
        for (uint256 i; i < pools.length; ++i) {
            dlmmFactory.setPoolProtocolShare(pools[i], protocolShares[i]);
        }
    }

    function setGlobalFeeSplit(IVoter voter, uint16 binStep, uint16 protocolShare) external {
        IDLMMFactory(_factory(voter)).setPresetProtocolShare(binStep, protocolShare);
    }

    function setRewarderFactoryImplementation(IVoter voter, address newImplementation) external {
        IDLMMRewarderFactory(voter.dlmmRewarderFactory()).setImplementation(newImplementation);
    }

    function setHooksManager(IVoter voter, address manager, bool enabled) external {
        if (enabled) {
            IAccessControl(_factory(voter)).grantRole(LB_HOOKS_MANAGER_ROLE, manager);
        } else {
            IAccessControl(_factory(voter)).revokeRole(LB_HOOKS_MANAGER_ROLE, manager);
        }
    }

    function collectFees(IVoter voter, address pool) external {
        address dlmmFactory = voter.dlmmFactory();
        if (dlmmFactory == address(0)) return;

        address dlmmFeeCollector = IDLMMFactory(dlmmFactory).feeCollector();
        if (dlmmFeeCollector != address(0)) IDLMMFeeCollector(dlmmFeeCollector).collectProtocolFees(pool);
    }

    function rescueR33Token(IR33 r33, address treasury, address token) external {
        r33.rescue(token, IERC20(token).balanceOf(address(r33)));
        IERC20(token).transfer(treasury, IERC20(token).balanceOf(address(this)));
    }

    function compoundR33(IXRam xRam, IR33 r33) external {
        address[] memory who = new address[](1);
        bool[] memory whitelisted = new bool[](1);
        who[0] = address(this);
        whitelisted[0] = true;
        xRam.setExemption(who, whitelisted);

        address r33Operator = r33.operator();
        r33.transferOperator(address(this));

        uint256 r33Balance = r33.balanceOf(address(r33));
        if (r33Balance > 0) {
            r33.rescue(address(r33), r33Balance);
            IERC4626(address(r33)).redeem(r33Balance, address(this), address(this));
            IERC20(address(xRam)).transfer(address(r33), xRam.balanceOf(address(this)));
        }

        whitelisted[0] = false;
        xRam.setExemption(who, whitelisted);
        r33.transferOperator(r33Operator);
    }

    function unwrapR33LegacyIncentives(IR33 r33, IPairFactory poolFactory, address lpToken) external {
        require(poolFactory.isPair(lpToken), "INVALID_LP_TOKEN");

        r33.rescue(lpToken, IERC20(lpToken).balanceOf(address(r33)));

        (bool isLP, address token0, address token1) = _tryUnwrapLP(lpToken);
        require(isLP, "UNWRAP_FAILED");

        IERC20(token0).transfer(address(r33), IERC20(token0).balanceOf(address(this)));
        IERC20(token1).transfer(address(r33), IERC20(token1).balanceOf(address(this)));
    }

    function rescueAutoVault(IAutoVault autoVault, address treasury, address token, uint256 amount) external {
        autoVault.rescue(token, amount);
        IERC20(token).transfer(treasury, amount);
    }

    function transferWhitelistInXRam(IXRam xRam, address[] calldata who, bool[] calldata whitelisted) external {
        require(who.length == whitelisted.length, Errors.LENGTH_MISMATCH());
        xRam.setExemption(who, whitelisted);
    }

    function transferToWhitelistInXRam(IXRam xRam, address[] calldata who, bool[] calldata whitelisted) external {
        require(who.length == whitelisted.length, Errors.LENGTH_MISMATCH());
        xRam.setExemptionTo(who, whitelisted);
    }

    function toggleXRamGovernance(IXRam xRam, bool enable) external {
        enable ? xRam.unpause() : xRam.pause();
    }

    function transferOperatorInXRam(IXRam xRam, address operator) external {
        xRam.migrateOperator(operator);
    }

    function addRewardToAllClGauges(IVoter voter, address reward) external {
        address[] memory allGauges = voter.getAllGauges();
        for (uint256 i; i < allGauges.length; i++) {
            if (voter.isClGauge(allGauges[i])) {
                try IGaugeV3(allGauges[i]).addRewards(reward) {} catch {}
            }
        }
    }

    function removeRewardFromAllClGauges(IVoter voter, address reward) external {
        address[] memory allGauges = voter.getAllGauges();
        for (uint256 i; i < allGauges.length; i++) {
            if (voter.isClGauge(allGauges[i])) {
                try IGaugeV3(allGauges[i]).removeRewards(reward) {} catch {}
            }
        }
    }

    function _factory(IVoter voter) private view returns (address dlmmFactory) {
        dlmmFactory = voter.dlmmFactory();
        require(dlmmFactory != address(0), Errors.NOT_INIT());
    }

    function _feeCollector(IVoter voter) private view returns (IDLMMFeeCollector) {
        address dlmmFeeCollector = IDLMMFactory(_factory(voter)).feeCollector();
        require(dlmmFeeCollector != address(0), Errors.NOT_INIT());

        return IDLMMFeeCollector(dlmmFeeCollector);
    }

    function _tryUnwrapLP(address token) private returns (bool isLP, address tokenA, address tokenB) {
        try IPair(token).token0() returns (address token0) {
            address token1 = IPair(token).token1();
            uint256 lpBalance = IERC20(token).balanceOf(address(this));

            if (lpBalance > 0) {
                IERC20(token).approve(LEGACY_ROUTER, lpBalance);
                IRouter(LEGACY_ROUTER)
                    .removeLiquidity(
                        token0, token1, IPair(token).stable(), lpBalance, 0, 0, address(this), block.timestamp
                    );

                return (true, token0, token1);
            }
        } catch {
            return (false, address(0), address(0));
        }
    }
}
