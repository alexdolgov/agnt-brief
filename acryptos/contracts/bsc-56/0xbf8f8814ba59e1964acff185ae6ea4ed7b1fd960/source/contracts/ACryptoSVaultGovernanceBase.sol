// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

import "./ACryptoSVaultBase.sol";

abstract contract ACryptoSVaultGovernanceBase is ACryptoSVaultBase {
    using SafeERC20Upgradeable for IERC20Upgradeable;

    address public strategist;
    uint256 public withdrawalFee;
    uint256 public harvesterReward;
    uint256 public averageBalancesDuration;
    mapping(address => uint256) private _averageBalancesLast;
    mapping(address => uint256) private _averageBalancesLastAt;
    uint256[44] private __gap;

    function __ACryptoSVaultGovernanceBase_init(
        string memory name,
        string memory symbol,
        address _token,
        address _governance,
        address _strategist,
        uint256 _withdrawalFee,
        uint256 _harvesterReward,
        uint256 _averageBalancesDuration
    ) internal initializer {
        __ACryptoSVaultBase_init(
            name, //
            symbol,
            _token,
            _governance
        );
        __ACryptoSVaultGovernanceBase_init_unchained(
            _strategist,
            _withdrawalFee,
            _harvesterReward,
            _averageBalancesDuration
        );
    }

    function __ACryptoSVaultGovernanceBase_init_unchained(
        address _strategist,
        uint256 _withdrawalFee,
        uint256 _harvesterReward,
        uint256 _averageBalancesDuration
    ) internal initializer {
        strategist = _strategist;
        require(_withdrawalFee < 1e18, "!withdrawalFee");
        withdrawalFee = _withdrawalFee;
        require(_harvesterReward < 1e18, "!harvesterReward");
        harvesterReward = _harvesterReward;
        require(_averageBalancesDuration > 0, "!averageBalancesDuration");
        averageBalancesDuration = _averageBalancesDuration;
    }

    function _withdraw(uint256 amount) internal virtual override {
        uint256 fee = (amount * withdrawalFee) / 1e18;
        amount -= fee;
        super._withdraw(amount);
    }

    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual override {
        super._beforeTokenTransfer(from, to, amount);

        if (from != to) {
            if (from != address(0)) {
                _updateAverageBalance(from);
            }
            if (to != address(0)) {
                _updateAverageBalance(to);
            }
        }
    }

    function _updateAverageBalance(address account) private {
        if (_averageBalancesLastAt[account] >= block.timestamp) return;

        _averageBalancesLast[account] = averageBalanceOf(account); // must get this before setting lastAt
        _averageBalancesLastAt[account] = block.timestamp;
    }

    function averageBalanceOf(address account)
        public
        view
        returns (uint256 balance)
    {
        uint256 lastWeight = _averageBalancesLastAt[account] >
            block.timestamp - averageBalancesDuration
            ? _averageBalancesLastAt[account] -
                (block.timestamp - averageBalancesDuration)
            : 0;
        if (lastWeight > averageBalancesDuration)
            lastWeight = averageBalancesDuration;
        balance =
            (_averageBalancesLast[account] *
                lastWeight +
                balanceOf(account) *
                (averageBalancesDuration - lastWeight)) /
            averageBalancesDuration;
    }

    function setAverageBalancesDuration(uint256 _averageBalancesDuration)
        external
        onlyGovernance
    {
        require(_averageBalancesDuration > 0, "!averageBalancesDuration");
        averageBalancesDuration = _averageBalancesDuration;
    }

    function setStrategist(address _strategist) external onlyGovernance {
        strategist = _strategist;
    }

    function setWithdrawalFee(uint256 _withdrawalFee) external onlyGovernance {
        require(_withdrawalFee < 1e18, "!withdrawalFee");
        withdrawalFee = _withdrawalFee;
    }

    function setHarvesterReward(uint256 _harvesterReward)
        external
        onlyStrategist
    {
        require(_harvesterReward < 1e18, "!harvesterReward");
        harvesterReward = _harvesterReward;
    }

    modifier onlyStrategist() {
        require(
            _msgSender() == strategist || _msgSender() == governance,
            "!strategist"
        );
        _;
    }

    function harvest() public returns (uint256 harvesterRewarded) {
        require(msg.sender == tx.origin, "!eoa");

        uint256 before = token.balanceOf(address(this));
        _harvest();
        uint256 harvested = token.balanceOf(address(this)) - before;

        if (harvested > 0) {
            harvesterRewarded = (harvested * harvesterReward) / 1e18;
            token.safeTransfer(msg.sender, harvesterRewarded);
        }
    }

    function _harvest() internal virtual;
}
