// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "@openzeppelin/contracts/utils/math/Math.sol";
import "@arbitrum/nitro-contracts/src/precompiles/ArbGasInfo.sol";
import "./AbstractKeeperRegistry1_1.sol";

contract ArbitrumKeeperRegistry1_1 is AbstractKeeperRegistry1_1 {
    using Math for uint256;

    ArbGasInfo public immutable ARB_NITRO_ORACLE =
        ArbGasInfo(0x000000000000000000000000000000000000006C);

    constructor(
        KeeperRegistryLogic1_1 keeperRegistryLogic,
        Config memory config
    ) AbstractKeeperRegistry1_1(keeperRegistryLogic, config) {}

    function _calculatePaymentAmount(
        uint256 gasAmount,
        bool isExecution
    ) internal view override returns (uint256 payment) {
        Storage memory store = s_storage;

        uint256 gasPrice;
        uint256 l1CostWei = ARB_NITRO_ORACLE.getCurrentTxL1GasFees();
        if (isExecution && tx.gasprice > 0) {
            gasPrice = tx.gasprice;
        } else {
            (, , , uint256 oraclePrice, , ) = ARB_NITRO_ORACLE.getPricesInWei();
            gasPrice =
                (oraclePrice == 0 ? s_fallbackGasPrice : oraclePrice) *
                store.gasCeilingMultiplier;
            l1CostWei = l1CostWei * store.gasCeilingMultiplier;
        }

        uint256 weiForGas = gasPrice * (gasAmount + REGISTRY_GAS_OVERHEAD);
        uint256 premium = PPB_BASE + store.paymentPremiumPPB;

        payment = (weiForGas + l1CostWei).mulDiv(premium, 1e9);
    }
}
