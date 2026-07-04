// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0 <0.9.0;

import { IndexOutOfBounds, InvalidVault, Unauthorized, ZeroAddress } from "./Errors.sol";
import { InstitutionalVault } from "./InstitutionalVault.sol";
import { IInstitutionalFactory } from "./interface/IInstitutionalFactory.sol";
import { AccessManager } from "@openzeppelin/contracts/access/manager/AccessManager.sol";
import { ERC1967Proxy } from "@openzeppelin/contracts/proxy/ERC1967/ERC1967Proxy.sol";
import { Create2 } from "@openzeppelin/contracts/utils/Create2.sol";

/**
 * @title InstitutionalFactory
 * @author Puffer Finance
 * @custom:security-contact security@puffer.fi
 */
contract InstitutionalFactory is IInstitutionalFactory {
    address public immutable PUFFER_MULTISIG;

    address[] public vaults;

    /**
     * @notice Constructor for the factory
     * @param pufferMultisig The address of the Puffer multisig
     */
    constructor(address pufferMultisig) {
        require(pufferMultisig != address(0), ZeroAddress());
        PUFFER_MULTISIG = pufferMultisig;
    }

    /**
     * @notice Modifier to check if the caller is the Puffer multisig
     */
    modifier onlyPufferMultisig() {
        require(msg.sender == PUFFER_MULTISIG, Unauthorized());
        _;
    }

    /**
     * @notice Creates a new vault
     * @param admin The admin of the access manager and the system
     * @param implementation The implementation that the vault will use
     * @param salt The salt used to create the vault
     * @param shareTokenName The name of the share token
     * @param shareTokenSymbol The symbol of the share token
     * @return The address of the vault and the address of the access manager
     */
    function createVault(
        address admin,
        address implementation,
        bytes32 salt,
        string calldata shareTokenName,
        string calldata shareTokenSymbol
    ) external onlyPufferMultisig returns (address, address) {
        require(admin != address(0), ZeroAddress());
        require(implementation != address(0), ZeroAddress());

        AccessManager accessManager = new AccessManager(admin);

        address vault = address(
            Create2.deploy({
                amount: 0,
                salt: salt,
                bytecode: abi.encodePacked(
                    type(ERC1967Proxy).creationCode,
                    abi.encode(
                        implementation,
                        abi.encodeCall(
                            InstitutionalVault.initialize, (address(accessManager), shareTokenName, shareTokenSymbol)
                        )
                    )
                )
            })
        );

        vaults.push(vault);

        emit VaultCreated(vault, address(accessManager), salt);

        return (address(accessManager), vault);
    }

    /**
     * @notice Removes a vault from the vaults array
     * @param vaultToRemove The address of the vault to remove
     * @param index The index of the vault to remove
     */
    function removeVault(address vaultToRemove, uint256 index) external onlyPufferMultisig {
        require(index < vaults.length, IndexOutOfBounds());
        require(vaultToRemove != address(0), ZeroAddress());
        require(vaultToRemove == vaults[index], InvalidVault());

        if (index != vaults.length - 1) {
            vaults[index] = vaults[vaults.length - 1];
        }
        vaults.pop();

        emit VaultRemoved(vaultToRemove);
    }

    /**
     * @notice Returns the addresses of all vaults created by this factory
     * @return The addresses of all vaults
     */
    function getVaults() external view override returns (address[] memory) {
        return vaults;
    }
}
