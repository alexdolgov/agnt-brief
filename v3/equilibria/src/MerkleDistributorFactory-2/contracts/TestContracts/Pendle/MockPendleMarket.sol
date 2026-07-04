// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "./ArrayLib.sol";
import "./Errors.sol";
import "@shared/lib-contracts-v0.8/contracts/TestContracts/ERC20Mock.sol";

contract MockPendleMarket is ERC20Mock {
    using ArrayLib for address[];

    address internal immutable PENDLE;

    address[] public extraRewards;

    struct UserReward {
        uint128 index;
        uint128 accrued;
    }

    // [token] => [user] => (index,accrued)
    mapping(address => mapping(address => UserReward)) public userReward;

    constructor(
        string memory name,
        string memory symbol,
        address pendle
    ) ERC20Mock(name, symbol) {
        PENDLE = pendle;
    }

    function addRewardTokens(address token) external {
        if (extraRewards.contains(token) || token == PENDLE) {
            revert Errors.SYInvalidRewardToken(token);
        }

        extraRewards.push(token);
    }

    function getRewardTokens() external view returns (address[] memory) {
        return _getRewardTokens();
    }

    function redeemRewards(
        address user
    ) external returns (uint256[] memory rewardAmounts) {
        address[] memory tokens = _getRewardTokens();
        rewardAmounts = new uint256[](tokens.length);
        for (uint256 i = 0; i < tokens.length; i++) {
            rewardAmounts[i] = balanceOf(user);
            rewardAmounts[i] += userReward[tokens[i]][user].accrued;
            userReward[tokens[i]][user].accrued = 0;
            _transferOut(tokens[i], user, rewardAmounts[i]);
        }
    }

    function _getRewardTokens() internal view returns (address[] memory) {
        return extraRewards.append(PENDLE);
    }

    function _beforeTokenTransfer(
        address from,
        address,
        uint256 amount
    ) internal override {
        address[] memory tokens = _getRewardTokens();
        for (uint256 i = 0; i < tokens.length; i++) {
            userReward[tokens[i]][from].accrued += uint128(amount);
        }
    }

    function _transferOut(address token, address to, uint256 amount) internal {
        if (amount == 0) return;
        if (token == address(0)) {
            (bool success, ) = to.call{value: amount}("");
            require(success, "eth send failed");
        } else {
            ERC20Mock(token).mint(to, amount);
        }
    }

    receive() external payable {}
}
