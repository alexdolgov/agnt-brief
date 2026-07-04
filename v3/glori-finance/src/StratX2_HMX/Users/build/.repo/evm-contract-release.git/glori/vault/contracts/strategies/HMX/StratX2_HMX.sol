// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../../BaseStrategyV2.sol";

interface IHLPStaking {
    function deposit(address to, uint256 amount) external;
    function withdraw(uint256 amount) external;
    function harvest(address[] memory _rewarders) external;
    function getRewarders() view external returns (address[] memory);
    function userTokenAmount(address user) external view returns (uint256);
}

interface IRewarder {
    function pendingReward(address user) external view returns (uint256);
}

contract StratX2_HMX is BaseStrategyV2 {
    using SafeERC20 for IERC20;

    IHLPStaking public hLPStaking;
    address public usdc;
    address public esHMX;
    address public arb;

    function initialize(
        address[] memory _addresses,
        bool _isAutoComp
    ) public virtual {
        super.__initialize(_addresses, 0, false, _isAutoComp);

        hLPStaking = IHLPStaking(0xbE8f8AF5953869222eA8D39F1Be9d03766010B1C);
        usdc = 0xFF970A61A04b1cA14834A43f5dE4533eBDDB5CC8;
        esHMX = 0x8a011EF14a92AA37cE82A4c95004a70730b6AC38;
        arb = 0x912CE59144191C1204E64559FE8253a0e49E6548;

        _addRewardToken(IERC20(usdc)); // [0]
        _addRewardToken(IERC20(arb));  // [1]

        // esHMX non-transfer
        //_addRewardToken(IERC20(esHMX)); // [2]
    }

    function _vaultDeposit(uint256 _amount) internal virtual override {
        wantAddress.safeIncreaseAllowance(address(hLPStaking), _amount);
        hLPStaking.deposit(address(this), _amount);
    }

    function _vaultWithdraw(uint256 _wantAmt) internal virtual override {
        hLPStaking.withdraw(_wantAmt);
    }

    function _vaultHarvest() public override {
        hLPStaking.harvest(hLPStaking.getRewarders());
    }

    function _vaultUserInfo() public virtual override view returns (uint256) {
        return hLPStaking.userTokenAmount(address(this));
    }

    function _vaultPending() public override view returns (uint256[] memory pending) {
        pending = new uint256[](2);

        // [0]: USDC.e, [1]: esHMX, [2]: esHMX, [3]: ARB
        address[] memory rewarders = hLPStaking.getRewarders();
        pending[0] = IRewarder(rewarders[0]).pendingReward(address(this));
        pending[1] = IRewarder(rewarders[3]).pendingReward(address(this));

        //pending[2] = IRewarder(rewarders[1]).pendingReward(address(this)) + IRewarder(rewarders[2]).pendingReward(address(this));
    }
}
