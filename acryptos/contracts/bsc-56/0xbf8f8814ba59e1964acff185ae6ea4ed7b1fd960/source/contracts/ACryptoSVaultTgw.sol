// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

import "./ACryptoSVaultGovernanceBase.sol";

contract ACryptoSVaultTgw is ACryptoSVaultGovernanceBase {
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer {}

    function initialize(
        string memory name,
        string memory symbol,
        address _token,
        address _governance,
        address _strategist,
        uint256 _withdrawalFee,
        uint256 _harvesterReward,
        uint256 _averageBalancesDuration
    ) public initializer {
        __ACryptoSVaultGovernanceBase_init(
            name,
            symbol,
            _token,
            _governance,
            _strategist,
            _withdrawalFee,
            _harvesterReward,
            _averageBalancesDuration
        );
        _approveTokens();
    }

    function _approveTokens() internal {
        IBlpPool pool = IBlpPool(address(token));
        IBlpVault vault = IBlpVault(pool.getVault());
        bytes32 poolId = pool.getPoolId();
        (address[] memory assets, , ) = vault.getPoolTokens(poolId);

        for (uint256 i = 0; i < assets.length; i++) {
            IERC20Upgradeable(assets[i]).approve(
                address(vault),
                type(uint256).max
            );
        }
    }

    function deposit(uint256 amount) public override {
        super.deposit(amount);
        _harvest();
    }

    function _harvest() internal override {
        IBlpPool pool = IBlpPool(address(token));
        IBlpVault vault = IBlpVault(pool.getVault());
        bytes32 poolId = pool.getPoolId();
        (address[] memory assets, , ) = vault.getPoolTokens(poolId);

        uint256[] memory amountsIn = new uint256[](assets.length);
        uint256[] memory maxAmountsIn = new uint256[](assets.length);
        bool hasAmountIn;
        for (uint256 i = 0; i < assets.length; i++) {
            amountsIn[i] = IERC20Upgradeable(assets[i]).balanceOf(
                address(this)
            );
            if (!hasAmountIn && amountsIn[i] > 0) hasAmountIn = true;
            maxAmountsIn[i] = type(uint256).max;
        }
        if (hasAmountIn) {
            vault.joinPool(
                poolId,
                address(this), // sender
                address(this), // recipient
                IBlpVault.JoinPoolRequest({
                    assets: assets,
                    maxAmountsIn: maxAmountsIn,
                    userData: abi.encode(
                        IBlpPool.JoinKind.EXACT_TOKENS_IN_FOR_BPT_OUT,
                        amountsIn,
                        0 // minimumBPT
                    ),
                    fromInternalBalance: false
                })
            );
        }
    }
}

interface IBlpVault {
    function getPoolTokens(bytes32 poolId)
        external
        view
        returns (
            address[] memory tokens,
            uint256[] memory balances,
            uint256 lastChangeBlock
        );

    function joinPool(
        bytes32 poolId,
        address sender,
        address recipient,
        JoinPoolRequest memory request
    ) external payable;

    struct JoinPoolRequest {
        address[] assets;
        uint256[] maxAmountsIn;
        bytes userData;
        bool fromInternalBalance;
    }
}

interface IBlpPool {
    enum JoinKind {
        INIT,
        EXACT_TOKENS_IN_FOR_BPT_OUT,
        TOKEN_IN_FOR_EXACT_BPT_OUT,
        ALL_TOKENS_IN_FOR_EXACT_BPT_OUT
    }

    function getVault() external view returns (address);

    function getPoolId() external view returns (bytes32);
}
