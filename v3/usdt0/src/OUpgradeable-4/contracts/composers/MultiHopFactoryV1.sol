// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

import {MultiHopComposerV1, IOFT} from "./MultiHopComposerV1.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { Create2 } from "@openzeppelin/contracts/utils/Create2.sol";

/// @title MultiHopComposerFactoryV1 Contract
/// @notice The contract is intended to work as a factory for MultiHopContracts.
contract MultiHopComposerFactoryV1 {
    event LogCreateMultiHopComposer(address indexed composer, address indexed oApp, address indexed endpoint, address owner);

    address public immutable endPoint;
    address public immutable refundAddress;
    bytes32 public constant SALT = 0x0;

    mapping(address => address) public composers;  // oApp => composer

    constructor(address _endPoint, address _refundAddress) {
        require(_endPoint != address(0), "Invalid endpoint");
        require(_refundAddress != address(0), "Invalid refund address");
        endPoint = _endPoint;
        refundAddress = _refundAddress;
    }

    /// @notice Creates a new MultiHopComposer contract.
    /// @param oApp The address of the OApp that is sending the composed message.
    /// @return composer The address of the new MultiHopComposer contract
    function createMultiHopComposer(address oApp) external returns (address composer) {
        require(composers[oApp] == address(0), "Composer already exists");
        (bytes memory bytecode, address owner) = _getByteCode(oApp);
        composer = Create2.deploy(0, SALT, bytecode);
        composers[oApp] = composer;
        emit LogCreateMultiHopComposer(composer, oApp, endPoint, owner);
    }

    function _getByteCode(address oApp) internal view returns (bytes memory bytecode, address owner) {
        owner = Ownable(oApp).owner();  // get the owner of the OApp, makes assumption that OApp is Ownable
        bytecode = abi.encodePacked(
            type(MultiHopComposerV1).creationCode,
            abi.encode(oApp, endPoint, owner, refundAddress)
        );
    }

    function computeComposerAddress(
        address oApp
    ) external view returns (address) {
        (bytes memory bytecode,) = _getByteCode(oApp);

        return Create2.computeAddress(SALT, keccak256(bytecode), address(this));
    }
}