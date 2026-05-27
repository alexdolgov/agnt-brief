// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "@openzeppelin/contracts/proxy/Clones.sol";

import "./Sickle.sol";

/// @title SickleFactory contract
/// @author vfat.tools
/// @notice Factory deploying new Sickle contracts
contract SickleFactory {
    /// EVENTS ///

    /// @notice Emitted when a new Sickle contract is deployed
    /// @param admin Address receiving the admin rights of the Sickle contract
    /// @param sickle Address of the newly deployed Sickle contract
    event Deploy(address indexed admin, address sickle);

    /// STORAGE ///

    /// @notice Returns the address of the Sickle contract associated with a
    /// specific user param admin Address of the user
    /// @return Address of the associated Sickle contract (or address(0) if no
    /// Sickle is associated yet)
    mapping(address => address) public sickles;

    /// @notice Returns the address of the admin address associated with a
    /// specific Sickle contract param sickle Address of the Sickle contract
    /// @return Address of the associated admin address (or address(0) if the
    /// input address is not a registered Sickle contract)
    mapping(address => address) public admins;

    /// @notice Keeps track of the referral code associated with each Sickle
    mapping(address => bytes32) public referralCodes;

    /// @notice Address of the SickleRegistry contract
    address public immutable registry;

    /// @notice Address of the Sickle implementation contract
    address public immutable implementation;

    /// WRITE FUNCTIONS ///

    /// @param sickleRegistry_ Address of the SickleRegistry contract
    constructor(address sickleRegistry_, address sickleImplementation_) {
        registry = sickleRegistry_;
        implementation = sickleImplementation_;
    }

    /// @notice Predict the address of a Sickle contract for a specific user
    /// @param admin Address receiving the admin rights of the Sickle contract
    function predict(address admin) external view returns (address) {
        bytes32 salt = keccak256(abi.encode(admin));
        return Clones.predictDeterministicAddress(implementation, salt);
    }

    /// @notice Deploys a new Sickle contract for a specific user
    /// @dev Sickle contracts are deployed with create2, the address of the
    /// admin is used as a salt, so all the Sickle addresses can be pre-computed
    /// and only 1 Sickle will exist per address
    /// @param targets Array of targets to call after the deployment
    /// @param data Array of data to pass with the calls
    /// @param isDelegatecall True for a delegatecall, false for a call
    /// @param values Values to pass with the calls
    /// @return Address of the deployed Sickle contract
    function deploy(
        address[] calldata targets,
        bytes[] calldata data,
        bool[] calldata isDelegatecall,
        uint256[] calldata values,
        bytes32 referralCode
    ) external payable returns (address) {
        Sickle sickle = Sickle(
            payable(
                Clones.cloneDeterministic(
                    implementation, keccak256(abi.encode(msg.sender))
                )
            )
        );
        sickle.initialize(msg.sender);

        sickles[msg.sender] = address(sickle);
        admins[address(sickle)] = msg.sender;

        if (targets.length > 0) {
            sickle.multicall{ value: msg.value }(
                targets, data, isDelegatecall, values
            );
        }

        if (referralCode != bytes32(0)) {
            referralCodes[address(sickle)] = referralCode;
        }

        emit Deploy(msg.sender, address(sickle));

        return address(sickle);
    }
}
