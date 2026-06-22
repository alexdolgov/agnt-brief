// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {IAuth} from "src/interfaces/IAuth.sol";
import {IERC20Wrapper} from "src/interfaces/IERC20.sol";
import {IEscrow} from "src/interfaces/IEscrow.sol";
import {IERC7540VaultFactory} from "src/interfaces/factories/IERC7540VaultFactory.sol";

interface FileAddressLike {
    function file(bytes32 what, address data) external;
}

interface FileAddressBoolLike {
    function file(bytes32 what, address payer, bool isAllowed) external;
}

interface RootLike {
    function relyContract(address target, address user) external;
    function denyContract(address target, address user) external;
    function deny(address user) external;
    function endorse(address user) external;
    function veto(address user) external;
}

interface VaultLike is IAuth {
    function poolId() external view returns (uint64);
    function trancheId() external view returns (bytes16);
    function asset() external view returns (address);
    function share() external view returns (address);
    function manager() external view returns (address);
    function root() external view returns (address);
    function escrow() external view returns (address);
}

struct NetworkConfig {
    address root;
    address oldRouter;
    address routerEscrow;
    address escrow;
    address gateway;
    address poolManager;
    address oldVaultFactory;
    address oldInvestmentManager;
    address usdc;
    address vaultLTF;
    address vaultDYF;
    address vaultNS3SR;
    address vaultNS3JR;
    address trancheLTF;
    address trancheDYF;
    address trancheNS3SR;
    address trancheNS3JR;
}

interface InvestorManagerLike is FileAddressLike, IAuth {}

interface PoolManagerLike {
    function deployVault(uint64 poolId, bytes16 trancheId, address asset) external returns (address);
    function removeVault(uint64 poolId, bytes16 trancheId, address asset) external;
}

contract Spell {
    bool public done;
    string public constant description = "Liquidity Pool InvestmentManager and Vaults migration spell";

    // ------------- Universal Contracts ---------------
    address public constant DEPLOYER = address(0x7270b20603FbB3dF0921381670fbd62b9991aDa4);

    // ------------- Network dependent Tranche Token Addresses ---------------
    address public immutable LTF_TRANCHE;
    address public immutable DYF_TRANCHE;
    address public immutable NS3SR_TRANCHE;
    address public immutable NS3JR_TRANCHE;

    // ------------- Network dependent Contracts ---------------
    RootLike public immutable ROOT;
    address public immutable ROUTER_ESCROW;
    address public immutable ESCROW;
    address public immutable GATEWAY;
    address public immutable OLD_ROUTER;
    address public immutable POOL_MANAGER;
    address public immutable OLD_VAULT_FACTORY;
    address public immutable OLD_INVESTMENT_MANAGER;

    // ------------- Network dependent Allowed Assets ---------------
    address public immutable USDC;

    // ------------- Network dependent Vaults -----------------------
    VaultLike public immutable OLD_LTF_VAULT;
    VaultLike public immutable OLD_DYF_VAULT;
    VaultLike public immutable OLD_NS3SR_VAULT;
    VaultLike public immutable OLD_NS3JR_VAULT;

    // ------------- Discovered during deployment -----------------------
    address public NEW_LTF_VAULT;
    address public NEW_DYF_VAULT;
    address public NEW_NS3SR_VAULT;
    address public NEW_NS3JR_VAULT;

    address public immutable self;
    // Assumes that these have been deployed separately with root being configured (.rely(address(root))).
    address public immutable NEW_ROUTER;
    address public immutable NEW_VAULT_FACTORY;
    address public immutable NEW_INVESTMENT_MANAGER;

    constructor(NetworkConfig memory config, address newRouter, address newInvestmentManager, address newVaultFactory) {
        self = address(this);
        ROOT = RootLike(config.root);
        OLD_ROUTER = config.oldRouter;
        NEW_ROUTER = newRouter;

        ROUTER_ESCROW = config.routerEscrow;
        ESCROW = config.escrow;
        GATEWAY = config.gateway;
        POOL_MANAGER = config.poolManager;
        OLD_VAULT_FACTORY = config.oldVaultFactory;
        NEW_VAULT_FACTORY = newVaultFactory;
        OLD_INVESTMENT_MANAGER = config.oldInvestmentManager;
        NEW_INVESTMENT_MANAGER = newInvestmentManager;
        USDC = config.usdc;

        if (config.vaultLTF != address(0)) {
            OLD_LTF_VAULT = VaultLike(config.vaultLTF);
            LTF_TRANCHE = config.trancheLTF;
        }
        if (config.vaultDYF != address(0)) {
            OLD_DYF_VAULT = VaultLike(config.vaultDYF);
            DYF_TRANCHE = config.trancheDYF;
        }
        if (config.vaultNS3SR != address(0)) {
            OLD_NS3SR_VAULT = VaultLike(config.vaultNS3SR);
            NS3SR_TRANCHE = config.trancheNS3SR;
        }
        if (config.vaultNS3JR != address(0)) {
            OLD_NS3JR_VAULT = VaultLike(config.vaultNS3JR);
            NS3JR_TRANCHE = config.trancheNS3JR;
        }
    }

    function cast() public {
        require(!done, "spell-already-cast");
        done = true;
        execute();
    }

    function execute() internal {
        _updateFilings();
        _setUpInvestmentManager();
        _setUpNewVaultFactory();
        _migrateVaults();
        _migrateRouter();

        _deprecateOldInvestmentManager();
        _deprecateOldVaultFactory();

        ROOT.deny(self);
    }

    function _migrateVaults() internal {
        ROOT.relyContract(POOL_MANAGER, self);
        PoolManagerLike manager = PoolManagerLike(POOL_MANAGER);

        if (LTF_TRANCHE != address(0)) {
            manager.removeVault(OLD_LTF_VAULT.poolId(), OLD_LTF_VAULT.trancheId(), OLD_LTF_VAULT.asset());
            NEW_LTF_VAULT =
                manager.deployVault(OLD_LTF_VAULT.poolId(), OLD_LTF_VAULT.trancheId(), OLD_LTF_VAULT.asset());
        }
        if (DYF_TRANCHE != address(0)) {
            manager.removeVault(OLD_DYF_VAULT.poolId(), OLD_DYF_VAULT.trancheId(), OLD_DYF_VAULT.asset());
            NEW_DYF_VAULT =
                manager.deployVault(OLD_DYF_VAULT.poolId(), OLD_DYF_VAULT.trancheId(), OLD_DYF_VAULT.asset());
        }
        if (NS3SR_TRANCHE != address(0)) {
            manager.removeVault(OLD_NS3SR_VAULT.poolId(), OLD_NS3SR_VAULT.trancheId(), OLD_NS3SR_VAULT.asset());
            NEW_NS3SR_VAULT =
                manager.deployVault(OLD_NS3SR_VAULT.poolId(), OLD_NS3SR_VAULT.trancheId(), OLD_NS3SR_VAULT.asset());
        }
        if (NS3JR_TRANCHE != address(0)) {
            manager.removeVault(OLD_NS3JR_VAULT.poolId(), OLD_NS3JR_VAULT.trancheId(), OLD_NS3JR_VAULT.asset());
            NEW_NS3JR_VAULT =
                manager.deployVault(OLD_NS3JR_VAULT.poolId(), OLD_NS3JR_VAULT.trancheId(), OLD_NS3JR_VAULT.asset());
        }

        ROOT.denyContract(POOL_MANAGER, self);
    }

    function _deprecateOldInvestmentManager() internal {
        ROOT.relyContract(OLD_INVESTMENT_MANAGER, self);
        InvestorManagerLike manager = InvestorManagerLike(OLD_INVESTMENT_MANAGER);
        manager.file("gateway", address(0));
        manager.file("poolManager", address(0));
        manager.deny(GATEWAY);
        manager.deny(OLD_VAULT_FACTORY);
        ROOT.denyContract(OLD_INVESTMENT_MANAGER, self);
    }

    function _deprecateOldVaultFactory() internal {
        ROOT.relyContract(OLD_VAULT_FACTORY, self);
        IAuth(OLD_VAULT_FACTORY).deny(POOL_MANAGER);
        ROOT.denyContract(OLD_VAULT_FACTORY, self);
    }

    function _setUpInvestmentManager() internal {
        ROOT.relyContract(NEW_INVESTMENT_MANAGER, self);
        InvestorManagerLike manager = InvestorManagerLike(NEW_INVESTMENT_MANAGER);
        manager.file("gateway", GATEWAY);
        manager.file("poolManager", POOL_MANAGER);
        manager.rely(GATEWAY);
        manager.rely(NEW_VAULT_FACTORY);
        manager.deny(DEPLOYER);
        ROOT.denyContract(NEW_INVESTMENT_MANAGER, self);

        // Setting proper allowances
        ROOT.relyContract(ESCROW, self);
        IEscrow escrow = IEscrow(ESCROW);
        escrow.approveMax(USDC, NEW_INVESTMENT_MANAGER);
        escrow.unapprove(USDC, OLD_INVESTMENT_MANAGER);

        if (LTF_TRANCHE != address(0)) {
            ROOT.denyContract(LTF_TRANCHE, OLD_INVESTMENT_MANAGER);
            ROOT.relyContract(LTF_TRANCHE, NEW_INVESTMENT_MANAGER);

            escrow.approveMax(LTF_TRANCHE, NEW_INVESTMENT_MANAGER);
            escrow.unapprove(LTF_TRANCHE, OLD_INVESTMENT_MANAGER);
        }
        if (DYF_TRANCHE != address(0)) {
            ROOT.denyContract(DYF_TRANCHE, OLD_INVESTMENT_MANAGER);
            ROOT.relyContract(DYF_TRANCHE, NEW_INVESTMENT_MANAGER);

            escrow.approveMax(DYF_TRANCHE, NEW_INVESTMENT_MANAGER);
            escrow.unapprove(DYF_TRANCHE, OLD_INVESTMENT_MANAGER);
        }
        if (NS3SR_TRANCHE != address(0)) {
            ROOT.denyContract(NS3SR_TRANCHE, OLD_INVESTMENT_MANAGER);
            ROOT.relyContract(NS3SR_TRANCHE, NEW_INVESTMENT_MANAGER);

            escrow.approveMax(NS3SR_TRANCHE, NEW_INVESTMENT_MANAGER);
            escrow.unapprove(NS3SR_TRANCHE, OLD_INVESTMENT_MANAGER);
        }
        if (NS3JR_TRANCHE != address(0)) {
            ROOT.denyContract(NS3JR_TRANCHE, OLD_INVESTMENT_MANAGER);
            ROOT.relyContract(NS3JR_TRANCHE, NEW_INVESTMENT_MANAGER);

            escrow.approveMax(NS3JR_TRANCHE, NEW_INVESTMENT_MANAGER);
            escrow.unapprove(NS3JR_TRANCHE, OLD_INVESTMENT_MANAGER);
        }

        ROOT.denyContract(ESCROW, self);
    }

    function _setUpNewVaultFactory() internal {
        ROOT.relyContract(NEW_VAULT_FACTORY, self);
        IAuth(NEW_VAULT_FACTORY).rely(POOL_MANAGER);
        IAuth(NEW_VAULT_FACTORY).deny(DEPLOYER);
        ROOT.denyContract(NEW_VAULT_FACTORY, self);
    }

    function _updateFilings() internal {
        ROOT.relyContract(POOL_MANAGER, self);
        FileAddressLike(POOL_MANAGER).file("investmentManager", NEW_INVESTMENT_MANAGER);
        FileAddressLike(POOL_MANAGER).file("vaultFactory", NEW_VAULT_FACTORY);
        ROOT.denyContract(POOL_MANAGER, self);

        ROOT.relyContract(GATEWAY, self);
        FileAddressLike(GATEWAY).file("investmentManager", NEW_INVESTMENT_MANAGER);
        FileAddressBoolLike(GATEWAY).file("payers", OLD_ROUTER, false);
        FileAddressBoolLike(GATEWAY).file("payers", NEW_ROUTER, true);
        ROOT.denyContract(GATEWAY, self);
    }

    function _migrateRouter() internal {
        ROOT.veto(OLD_ROUTER);
        ROOT.relyContract(ROUTER_ESCROW, self);
        IAuth(ROUTER_ESCROW).deny(OLD_ROUTER);
        IAuth(ROUTER_ESCROW).rely(NEW_ROUTER);
        ROOT.denyContract(ROUTER_ESCROW, self);

        ROOT.relyContract(NEW_ROUTER, self);
        ROOT.endorse(NEW_ROUTER);
        IAuth(NEW_ROUTER).rely(address(ROOT));
        ROOT.denyContract(NEW_ROUTER, self);
    }
}
