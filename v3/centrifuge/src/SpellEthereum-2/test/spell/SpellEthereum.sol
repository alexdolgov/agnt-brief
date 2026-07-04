// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {Spell, NetworkConfig} from "test/spell/Spell.sol";

contract SpellEthereum is Spell {
    constructor(address newRouter, address newInvestmentManager, address newVaultFactory)
        Spell(
            NetworkConfig({
                root: address(0x0C1fDfd6a1331a875EA013F3897fc8a76ada5DfC),
                oldRouter: address(0x2F445BA946044C5F508a63eEaF7EAb673c69a1F4),
                routerEscrow: address(0x0F1b890fC6774Ef9b14e99de16302E24A6e7B4F7),
                escrow: address(0x0000000005F458Fd6ba9EEb5f365D83b7dA913dD),
                gateway: address(0x7829E5ca4286Df66e9F58160544097dB517a3B8c),
                poolManager: address(0x91808B5E2F6d7483D41A681034D7c9DbB64B9E29),
                oldVaultFactory: address(0x6f9dba3D3A3ab083BcA60Ef82784cf12A6eC24b8),
                oldInvestmentManager: address(0xE79f06573d6aF1B66166A926483ba00924285d20),
                usdc: address(0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48),
                vaultLTF: address(0x1d01Ef1997d44206d839b78bA6813f60F1B3A970),
                vaultDYF: address(0xe98Cf1221bC3F38D8bb132b8434A6F8885071173),
                vaultNS3SR: address(0x2fEbfdE8B5e2d779420643E055CaC9df5DBC4799),
                vaultNS3JR: address(0xa7607A638df0117E6718b93f8cFf53503A815D2f),
                trancheLTF: address(0x8c213ee79581Ff4984583C6a801e5263418C4b86),
                trancheDYF: address(0x464b975c162b983e1dC8506C1ae13c76a8BEe919),
                trancheNS3SR: address(0xFb9c180c2582ffc69b7F7c0Ff7Ee9b1D8EBC6F0d),
                trancheNS3JR: address(0x20d830FE67C781830F7ad937BdeB58C6EFAbCBdF)
            }),
            newRouter,
            newInvestmentManager,
            newVaultFactory
        )
    {}
}
