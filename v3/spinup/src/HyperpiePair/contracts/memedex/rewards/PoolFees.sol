// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import { IHyperpieConfig } from "../../interfaces/IHyperpieConfig.sol";
import { IPoolFees } from "../interfaces/IPoolFees.sol";
import { HyperpieConstants } from "../../utils/HyperpieConstants.sol";
import { ReentrancyGuardUpgradeable } from "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import { RoleCheckerLib } from "../../libraries/RoleCheckerLib.sol";
import { UtilLib } from "../../utils/UtilLib.sol";

/// @title PoolFees
/// @notice Contract used as 1:1 pool relationship to split out fees.
/// @notice Ensures curve does not need to be modified for LP shares.
contract PoolFees is IPoolFees, ReentrancyGuardUpgradeable {

    using SafeERC20 for IERC20;
    address internal pool; // The pool it is bonded to
    address internal token0; // token0 of pool, saved localy and statically for gas optimization
    address internal token1; // Token1 of pool, saved localy and statically for gas optimization

    address public poolCreator;
    bool public meme; // if not core, then it's a meme pool, which creator can earn fees, only pair created by launchpad can be meme pool

    IHyperpieConfig public hyperpieConfig;

    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _token0, 
        address _token1, 
        address _hyperpieConfig
    )
        external
        initializer
    {
        __ReentrancyGuard_init();
        pool = msg.sender;
        token0 = _token0;
        token1 = _token1;

        hyperpieConfig = IHyperpieConfig(_hyperpieConfig);

    }

    modifier onlyPool() {
        if (msg.sender != pool) revert NotPool();
        _;
    }

    modifier onlyLaunchpad() {
        address launchpad = hyperpieConfig.getAddress(HyperpieConstants.MEME_LAUNCHPAD);
        if (msg.sender != launchpad ) revert NotLaunchpad();
        _;
    }    

    function collectFee(address _token, uint256 _amount) onlyPool nonReentrant override external {
        if (_amount > 0) {
            IERC20(_token).safeTransferFrom(msg.sender, address(this), _amount);

            uint256 teamAmount = _amount * hyperpieConfig.getUint256Value(HyperpieConstants.FEE_TEAM_COLLECTOR) / HyperpieConstants.DENOMINATOR;
            uint256 veHPPAmount = _amount * hyperpieConfig.getUint256Value(HyperpieConstants.FEE_VEHPP_COLLECTOR) / HyperpieConstants.DENOMINATOR; // veHPP fee only charged for core pools
            uint256 lpAmount = _amount * lpRevShareBPS() / HyperpieConstants.DENOMINATOR;
            uint256 creatorAmount = 0;

            // If (non-meme) pool,creator fee is added to the LP amount, If meme pool, the creator fee goes to the creator.
            if (meme) {
                creatorAmount = _amount * hyperpieConfig.getUint256Value(HyperpieConstants.FEE_POOL_CREATOR) / HyperpieConstants.DENOMINATOR;
            }
            
            if ((teamAmount + creatorAmount + lpAmount + veHPPAmount) > _amount)
                revert InvalidFees();

            if (teamAmount > 0) {
                IERC20(_token).safeTransfer(hyperpieConfig.getAddress(HyperpieConstants.FEE_TEAM_COLLECTOR), teamAmount);
            }

            if (creatorAmount > 0) {
                IERC20(_token).safeTransfer(poolCreator, creatorAmount);
            }

            if (veHPPAmount > 0) {
                IERC20(_token).safeTransfer(hyperpieConfig.getAddress(HyperpieConstants.FEE_VEHPP_COLLECTOR), veHPPAmount);
            }

            // lp amount will be left to be claimed by lp holders
        }
    }

    /// @notice Allow the pool to transfer fees to users, mainly called by lp holders
    function claimFeesFor(address _recipient, uint256 _amount0, uint256 _amount1) onlyPool nonReentrant override external {
        if (_amount0 > 0) IERC20(token0).safeTransfer(_recipient, _amount0);
        if (_amount1 > 0) IERC20(token1).safeTransfer(_recipient, _amount1);
    }

    function setCreatorAndMeme(bool _meme, address _creator) onlyLaunchpad nonReentrant override external {
        meme = _meme;
        poolCreator = _creator;
    }

    function updateConfig(address _hyperpieConfig) external {
        UtilLib.checkNonZeroAddress(_hyperpieConfig);
        RoleCheckerLib.onlyDefaultAdmin(address(hyperpieConfig));
        hyperpieConfig = IHyperpieConfig(_hyperpieConfig);
        emit UpdatedHyperpieConfig(_hyperpieConfig);
    }

     function lpRevShareBPS() public view returns (uint256 lpRevBps) {
        if (!meme) {
            lpRevBps = hyperpieConfig.getUint256Value(HyperpieConstants.FEE_V2_STABLE_LP);
            lpRevBps += hyperpieConfig.getUint256Value(HyperpieConstants.FEE_POOL_CREATOR);
        } else {
            lpRevBps = hyperpieConfig.getUint256Value(HyperpieConstants.FEE_V2_STABLE_LP);
        }
    }
}
