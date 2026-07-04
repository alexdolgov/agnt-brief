// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {Spell, NetworkConfig} from "test/spell/Spell.sol";

contract SpellBase is Spell {
    constructor(address newRouter, address newInvestmentManager, address newVaultFactory)
        Spell(
            NetworkConfig({
                root: address(0x0C1fDfd6a1331a875EA013F3897fc8a76ada5DfC),
                oldRouter: address(0xF35501E7fC4a076E744dbAFA883CED74CCF5009d),
                routerEscrow: address(0x0F1b890fC6774Ef9b14e99de16302E24A6e7B4F7),
                escrow: address(0x0000000005F458Fd6ba9EEb5f365D83b7dA913dD),
                gateway: address(0x3423D288F2C04eB072eBB973F8c8B9b73cAa4361),
                poolManager: address(0x7f192F34499DdB2bE06c4754CFf2a21c4B056994),
                oldVaultFactory: address(0xcaD01F5A7eE9ba09A1aFDb9Dcaa58cE024E4462C),
                oldInvestmentManager: address(0x36b87b860857e6a6d4c2D24be11dc9b230F00f03),
                usdc: address(0x833589fCD6eDb6E08f4c7C32D4f71b54bdA02913),
                vaultLTF: address(0x270Ee1564eC483DD83f284E4D7bDFbfaa2feA76E),
                vaultDYF: address(0),
                vaultNS3SR: address(0),
                vaultNS3JR: address(0),
                trancheLTF: address(0x8c213ee79581Ff4984583C6a801e5263418C4b86),
                trancheDYF: address(0),
                trancheNS3SR: address(0),
                trancheNS3JR: address(0)
            }),
            newRouter,
            newInvestmentManager,
            newVaultFactory
        )
    {}
}
