// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "./Vault.sol";

/**
 * @title VaultWithInitialHolders
 * @notice Vault extension that mints shares to initial holders without requiring
 *         real asset transfers. Used for bootstrapping or migration — holders
 *         receive shares reflecting their position while the actual assets are
 *         assumed to be already deployed in the bootstrap strategy off-chain.
 */
contract VaultWithInitialHolders is Vault {

    bool private _holdersInitialized;

    struct InitialHolder {
        address addr;
        uint256 amount; // position value in asset units (accounting for decimals)
    }

    event InitialHolderMinted(address indexed addr, uint256 assets, uint256 shares);

    constructor(address _asset, uint256 _minDepositAmount)
        Vault(_asset, _minDepositAmount)
    {}

    /**
     * @notice Mints shares to initial holders at a uniform exchange rate.
     *
     * @dev Two-pass algorithm to guarantee equal share price for all holders:
     *
     *   Pass 1 — validate inputs and pre-compute every holder's share count
     *            at the empty-vault exchange rate (totalSupply=0, totalAssets=0).
     *            All shares are computed BEFORE any _mint() calls because once
     *            _mint() runs totalSupply grows while _totalTrackedAssets is still
     *            zero, which would inflate share counts for subsequent holders.
     *
     *   Apply accounting — _addTrackedAssets and strategyDeployedValue are set
     *                      once before the mint loop so the vault invariant holds
     *                      from the moment the first share is minted.
     *
     *   Pass 2 — mint all pre-computed shares and emit events.
     *
     *   Result: every holder receives shares_i = amount_i × 10^offset, so
     *           convertToAssets(shares_i) == amount_i for all i.
     *
     * @param bootstrapStrategy Address of the already-registered strategy that holds
     *                         the corresponding assets off-chain / cross-chain.
     * @param initialHolders   Array of (address, assetAmount) pairs to bootstrap.
     */
    function initHolders(address bootstrapStrategy, InitialHolder[] memory initialHolders) external onlyOwner {
        require(!_holdersInitialized, "Already initialized");
        require(initialHolders.length > 0, "Empty holders array");
        require(totalSupply() == 0, "Vault is not empty");
        require(isStrategy[bootstrapStrategy], "Not registered strategy");
        require(strategyDeployedValue[bootstrapStrategy] == 0, "Strategy already funded");

        uint256 len = initialHolders.length;

        // ── Pass 1: validate inputs and pre-compute shares at empty-vault rate ─
        //
        // At this point: totalSupply == 0, _totalTrackedAssets == 0.
        // previewDeposit = amount × 10^offset — the same initial rate for every holder.
        // We snapshot all share amounts before touching state so that subsequent
        // calls to previewDeposit are not affected by growing totalSupply.

        uint256 totalAmt;
        uint256[] memory sharesArr = new uint256[](len);

        for (uint256 i = 0; i < len; i++) {
            require(initialHolders[i].addr != address(0), "Zero address holder");
            require(initialHolders[i].amount > 0, "Zero amount");

            totalAmt += initialHolders[i].amount;
            sharesArr[i] = previewDeposit(initialHolders[i].amount);
        }

        // ── Apply accounting before minting so the invariant holds immediately ─
        _addTrackedAssets(totalAmt);
        strategyDeployedValue[bootstrapStrategy] = totalAmt;

        // ── Pass 2: mint pre-computed shares and emit events ──────────────────
        for (uint256 i = 0; i < len; i++) {
            address addr   = initialHolders[i].addr;
            uint256 assets = initialHolders[i].amount;
            uint256 shares = sharesArr[i];

            _mint(addr, shares);
            emit Deposit(addr, addr, assets, shares);
            emit InitialHolderMinted(addr, assets, shares);
        }

        performanceFeeHighWaterMark = _convertToAssets(10 ** decimals(), Math.Rounding.Floor);

        _holdersInitialized = true;
    }
}
