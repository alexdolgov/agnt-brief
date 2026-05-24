// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

import {PMStorage} from "../storage/PMStorage.sol";
import {IOracleUSD} from "../interfaces/IOracleUSD.sol";
import {ConfigRegistry} from "../ConfigRegistry.sol";
import {IIRM} from "../interfaces/IIRM.sol";

// Shared internal helpers for PositionsManager and delegatecall modules
abstract contract PMLedgerBase is PMStorage {
    function _previewBorrowIndexWad(address asset) internal view virtual returns (uint256) {
        AssetState memory s = astate[asset];

        // If never initialized, treat as 1.0
        uint256 baseIdx = s.borrowIndexWad == 0 ? WAD : s.borrowIndexWad;
        uint256 last = s.lastAccrual;

        // No accrual history or same timestamp â†’ return stored index
        if (last == 0 || block.timestamp == last) return baseIdx;
        if (s.borrows == 0) return baseIdx;

        ConfigRegistry.AssetCfg memory c = config.getAssetCfg(asset);

        // Utilization at last accrual snapshot (consistent with your accrue())
        uint256 denom = s.cash + s.borrows + s.idlePrincipal;
        if (denom == 0) return baseIdx;

        uint256 utilWad = (s.borrows * WAD) / denom;
        uint256 aprWad = IIRM(c.irm).borrowAPR(asset, utilWad);

        uint256 dt = block.timestamp - last;
        uint256 factorWad = WAD + ((aprWad * dt) / 365 days);

        return (baseIdx * factorWad) / WAD;
    }

    function _touchCollAsset(address user, address asset) internal {
        PMStorage.Balance storage b = collateral[user][asset];
        bool active = (b.avail + b.hold) > 0;
        uint256 ix = _collIx[user][asset];

        if (active && ix == 0) {
            _userCollAssets[user].push(asset);
            _collIx[user][asset] = _userCollAssets[user].length; // 1-based
        } else if (!active && ix != 0) {
            uint256 arrIx = ix - 1;
            address[] storage arr = _userCollAssets[user];
            uint256 last = arr.length - 1;
            if (arrIx != last) {
                address moved = arr[last];
                arr[arrIx] = moved;
                _collIx[user][moved] = arrIx + 1;
            }
            arr.pop();
            _collIx[user][asset] = 0;
        }
    }

    function _touchDebtAsset(address user, address asset) internal {
        bool active = (debt[user][asset].principal > 0);
        uint256 ix = _debtIx[user][asset];
        if (active && ix == 0) {
            _userDebtAssets[user].push(asset);
            _debtIx[user][asset] = _userDebtAssets[user].length; // 1-based
        } else if (!active && ix != 0) {
            uint256 arrIx = ix - 1;
            address[] storage arr = _userDebtAssets[user];
            uint256 last = arr.length - 1;
            if (arrIx != last) {
                address moved = arr[last];
                arr[arrIx] = moved;
                _debtIx[user][moved] = arrIx + 1;
            }
            arr.pop();
            _debtIx[user][asset] = 0;
        }
    }

    function _syncSupplier(address user, address asset) internal {
        uint256 idxGlobal = astate[asset].supplyIndexWad;
        uint256 idxUser = userSupplyIndexWad[user][asset];
        if (idxGlobal == idxUser) return;
        // Advance user's snapshot; interest is tracked via indices only (no claimable bucket here)
        userSupplyIndexWad[user][asset] = idxGlobal;
    }

    function _syncBorrower(address user, address asset) internal {
        DebtData storage d = debt[user][asset];
        if (d.principal == 0) return;
        uint256 idxNow = _previewBorrowIndexWad(asset);
        uint256 idxOpen = (d.indexAtOpenWad == 0) ? WAD : d.indexAtOpenWad;
        if (idxNow == idxOpen) return;
        // realize interest into principal
        d.principal = (d.principal * idxNow) / idxOpen;
        d.indexAtOpenWad = idxNow;
    }

    // Align FT settlement baseline to user's current supply index (when new principal is credited).
    function _alignFTBaseline(address user, address asset) internal {
        userSupplyIdxAtSettleWad[user][asset] = userSupplyIndexWad[user][asset];
    }

    // Convenience: current principal for user/asset (avail + hold).
    function _principalOf(address user, address asset) internal view returns (uint256) {
        Balance storage b = collateral[user][asset];
        return b.avail + b.hold;
    }

    // Oracle passthrough from config
    function _oracle() internal view returns (IOracleUSD) {
        return IOracleUSD(config.oracleRouter());
    }
}
