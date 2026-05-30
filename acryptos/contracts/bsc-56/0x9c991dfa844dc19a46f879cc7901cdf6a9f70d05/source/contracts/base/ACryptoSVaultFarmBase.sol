// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.13;

import "./ACryptoSVaultBase.sol";

abstract contract ACryptoSVaultFarmBase is ACryptoSVaultBase {
    bool public paused;
    ERC20Upgradeable public rewardToken;
    uint256 public harvesterReward;
    uint256 public lastHarvestedAt;
    uint256[47] private __gap;

    using SafeERC20Upgradeable for ERC20Upgradeable;

    function __ACryptoSVaultFarmBase_init(
        string memory _name,
        string memory _symbol,
        address _controller,
        address _token,
        address _rewardToken,
        uint256 _harvesterReward
    ) internal initializer {
        __ACryptoSVaultBase_init(_name, _symbol, _controller, _token);
        __ACryptoSVaultFarmBase_init_unchained(_rewardToken, _harvesterReward);
    }

    function __ACryptoSVaultFarmBase_init_unchained(
        address _rewardToken,
        uint256 _harvesterReward
    ) internal initializer {
        lastHarvestedAt = block.timestamp;
        rewardToken = ERC20Upgradeable(_rewardToken);
        harvesterReward = _harvesterReward;
        _validateFees();
    }

    function balance() public view virtual override returns (uint256) {
        return super.balance() + balanceStaked();
    }

    function balanceStaked() public view virtual returns (uint256);

    function deposit(uint256 amount) public payable virtual override {
        super.deposit(amount);
        _stake();
        _autoHarvest();
    }

    function harvest() public virtual returns (uint256 harvesterRewarded) {
        require(msg.sender == tx.origin, "!eoa");

        harvesterRewarded = _harvest(true);
    }

    function pause() public virtual onlyStrategist {
        paused = true;
        _unstakeAll();
    }

    function setPaused() public virtual onlyStrategist {
        paused = true;
    }

    function unpause() public virtual onlyStrategist {
        paused = false;
        _stake();
    }

    function setHarvesterReward(uint256 _harvesterReward)
        external
        onlyStrategist
    {
        harvesterReward = _harvesterReward;
        _validateFees();
    }

    function _validateFees() private view {
        require(
            controller.performanceFee() +
                controller.strategistReward() +
                harvesterReward <
                1e18,
            "!fees"
        );
    }

    function _autoHarvestInterval() internal pure returns (uint256) {
        return 3600 * 16;
    }

    function _withdraw(uint256 shares, bool nativeAsset)
        internal
        virtual
        override
        returns (uint256 amount)
    {
        amount = super._withdraw(shares, nativeAsset);
        _autoHarvest();
    }

    function _beforeWithdrawTransfer(uint256 amount)
        internal
        virtual
        override
        returns (uint256)
    {
        uint256 _balance = token.balanceOf(address(this));
        if (_balance < amount) {
            _unstake(amount - _balance);
            _balance = token.balanceOf(address(this));
            if (_balance < amount) amount = _balance;
        }

        uint256 fee = (amount * controller.withdrawalFee()) / 1e18;
        amount -= fee;
        token.safeTransfer(controller.feesTo(), fee);

        return amount;
    }

    function _harvest(bool isManualHarvest)
        internal
        virtual
        returns (uint256 harvesterRewarded)
    {
        lastHarvestedAt = block.timestamp;

        uint256 harvested = rewardToken.balanceOf(address(this));
        _harvestFarm(isManualHarvest);
        harvested = rewardToken.balanceOf(address(this)) - harvested;

        if (harvested > 0) {
            if (isManualHarvest) {
                harvesterRewarded = (harvested * harvesterReward) / 1e18;
                rewardToken.safeTransfer(msg.sender, harvesterRewarded);
            }

            rewardToken.safeTransfer(
                controller.strategist(),
                (harvested * controller.strategistReward()) / 1e18
            );

            rewardToken.safeTransfer(
                controller.feesTo(),
                (harvested * controller.performanceFee()) / 1e18
            );

            _harvestComplete(isManualHarvest);
        }

        _logPrice();
    }

    function _autoHarvest() internal virtual {
        if (
            msg.sender == tx.origin &&
            lastHarvestedAt < block.timestamp - _autoHarvestInterval()
        ) {
            _harvest(false);
        }
    }

    function _stake() internal virtual;

    function _unstake(uint256 amount) internal virtual;

    function _unstakeAll() internal virtual;

    function _harvestFarm(bool isManualHarvest) internal virtual;

    function _harvestComplete(bool isManualHarvest) internal virtual;
}
