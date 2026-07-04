// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.19;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20Metadata}  from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {Strings} from "@openzeppelin/contracts/utils/Strings.sol";

import {BaseWrapper, ERC4626Upgradeable, IERC4626} from "src/wrappers/BaseWrapper.sol";
import {IALMWrapper} from "src/interfaces/pancake/IALMWrapper.sol";
import {IAdapter} from "src/interfaces/pancake/IAdapter.sol";
import {IPancakeStaking} from "src/interfaces/cakepie/IPancakeStaking.sol";
import {IMasterCakepie} from "src/interfaces/cakepie/IMasterCakepie.sol";
import {IPancakeAMLHelper} from "src/interfaces/cakepie/IPancakeAMLHelper.sol";
import {IBaseRewardPool} from "src/interfaces/cakepie/IBaseRewardPool.sol";

contract WrappedCakepieAML is BaseWrapper {

    using SafeERC20 for IERC20;

    IPancakeAMLHelper public immutable HELPER;
    IALMWrapper public immutable POOL;
    IPancakeStaking public immutable STAKING;
    address public immutable DEPOSIT_TOKEN;
    address public immutable REWARDER;
    address public immutable RECEIPT_TOKEN;
    bool public immutable IS_AMOUNT0;

    constructor(address _pancakeAMLHelper, address _pool) {
        HELPER = IPancakeAMLHelper(_pancakeAMLHelper);
        STAKING = IPancakeStaking(HELPER.pancakeStaking());
        POOL = IALMWrapper(_pool);
        (,DEPOSIT_TOKEN, REWARDER, RECEIPT_TOKEN,,,, IS_AMOUNT0,,) = STAKING.pools(address(POOL));
    }

    function initialize(
        string memory name_,
        string memory symbol_,
        address authority_
    ) public initializer {
        __BaseWrapper_init(RECEIPT_TOKEN, name_, symbol_, authority_);
    }

    function _invest() internal override {
        uint256 currBalance = IERC20(DEPOSIT_TOKEN).balanceOf(address(this));
        if (currBalance > 0) {
            IERC20(DEPOSIT_TOKEN).forceApprove(address(STAKING), currBalance);
            uint256 amount0;
            uint256 amount1;
            IS_AMOUNT0 ? amount0 = currBalance : amount1 = currBalance;
            HELPER.deposit(address(POOL), amount0, amount1);
        }
    }

    function _redeem(uint lpAmount, address to)
        internal
        override
        returns (address[] memory tokens, uint[] memory amounts)
    {
        HELPER.withdrawAndClaim(address(POOL), lpAmount, false);

        tokens = poolTokens();
        amounts = new uint256[](tokens.length);
        for (uint8 i = 0; i < tokens.length; i++) {
            amounts[i] = IERC20(tokens[i]).balanceOf(address(this));
            IERC20(tokens[i]).safeTransfer(to, amounts[i]);
        }
    }

    function _claim(address to) internal override {
        address[] memory stakingTokens = new address[](1);
        stakingTokens[0] = address(POOL);
        address[][] memory rewardTokens = new address[][](1);
        IMasterCakepie(HELPER.masterCakepie()).multiclaimFor(stakingTokens, rewardTokens, to);
    }

    function depositTokens() public override view returns (address[] memory tokens) {
        tokens = new address[](1);
        tokens[0] = DEPOSIT_TOKEN;
    }

    function rewardTokens() public override view returns (address[] memory tokens) {
        (tokens,) = IBaseRewardPool(REWARDER).rewardTokenInfos();
    }

    function poolTokens() public override view returns (address[] memory tokens) {
        IAdapter adapter = IAdapter(POOL.adapterAddr());
        tokens = new address[](2);
        tokens[0] = adapter.token0();
        tokens[1] = adapter.token1();
    }

    function farmingPool() public view returns (address) {
        return address(POOL);
    }

    /// @dev for offchain use
    function ratios()
        external
        override
        view
        returns (address[] memory tokens, uint[] memory ratio)
    {
        tokens = new address[](1);
        ratio = new uint256[](1);

        tokens[0] = DEPOSIT_TOKEN;
        ratio[0] = 1e18;
    }

    /// @dev for offchain use
    function description() external override view returns (string memory) {
        return string.concat(
            '{',
            '"type":"cakepieAML",',
            '"cakepieStaking":"', Strings.toHexString(address(STAKING)),'",',
            '"pool":"', Strings.toHexString(address(POOL)),'"',
            '}'
        );
    }

}