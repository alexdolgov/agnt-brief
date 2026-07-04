// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {Spell, NetworkConfig} from "test/spell/Spell.sol";

contract SpellArbitrum is Spell {
    constructor(address newRouter, address newInvestmentManager, address newVaultFactory)
        Spell(
            NetworkConfig({
                root: address(0x0C1fDfd6a1331a875EA013F3897fc8a76ada5DfC),
                oldRouter: address(0x2F445BA946044C5F508a63eEaF7EAb673c69a1F4),
                routerEscrow: address(0x0F1b890fC6774Ef9b14e99de16302E24A6e7B4F7),
                escrow: address(0x0000000005F458Fd6ba9EEb5f365D83b7dA913dD),
                // TODO: Ensure expected match with Eth mainnet
                gateway: address(0x7829E5ca4286Df66e9F58160544097dB517a3B8c),
                // TODO: Ensure expected match with Eth mainnet
                poolManager: address(0x91808B5E2F6d7483D41A681034D7c9DbB64B9E29),
                // TODO: Ensure expected match with Eth mainnet
                oldVaultFactory: address(0x6f9dba3D3A3ab083BcA60Ef82784cf12A6eC24b8),
                // TODO: Ensure expected match with Eth mainnet
                oldInvestmentManager: address(0xE79f06573d6aF1B66166A926483ba00924285d20),
                usdc: address(0xaf88d065e77c8cC2239327C5EDb3A432268e5831),
                vaultLTF: address(0xe98Cf1221bC3F38D8bb132b8434A6F8885071173),
                vaultDYF: address(0x1d01Ef1997d44206d839b78bA6813f60F1B3A970),
                vaultNS3SR: address(0),
                vaultNS3JR: address(0),
                trancheLTF: address(0x8c213ee79581Ff4984583C6a801e5263418C4b86),
                trancheDYF: address(0x464b975c162b983e1dC8506C1ae13c76a8BEe919),
                trancheNS3SR: address(0),
                trancheNS3JR: address(0)
            }),
            newRouter,
            newInvestmentManager,
            newVaultFactory
        )
    {}
}
