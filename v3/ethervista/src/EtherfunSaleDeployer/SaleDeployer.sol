// SPDX-License-Identifier: MIT
pragma solidity >=0.8.19;

import "./SaleContract.sol";

contract EtherfunSaleDeployer {
    error NotFactory();
    error DeploymentFailed();

    address public immutable factory;

    constructor(address _factory) {
        factory = _factory;
    }

    function _bytecode(
        string memory name,
        string memory symbol,
        address creator,
        uint256 totalTokens,
        uint256 saleGoal,
        uint8 creatorShare
    ) internal view returns (bytes memory) {
        return abi.encodePacked(
            type(EtherfunSale).creationCode,
            abi.encode(
                name,
                symbol,
                creator,
                factory,
                totalTokens,
                saleGoal,
                creatorShare
            )
        );
    }

    function predictAddress(
        bytes32 salt,
        string calldata name,
        string calldata symbol,
        address creator,
        uint256 totalTokens,
        uint256 saleGoal,
        uint8 creatorShare
    ) external view returns (address) {
        bytes memory bytecode = _bytecode(name, symbol, creator, totalTokens, saleGoal, creatorShare);
        bytes32 initCodeHash = keccak256(bytecode);
        return address(uint160(uint256(keccak256(abi.encodePacked(bytes1(0xff), address(this), salt, initCodeHash)))));
    }

    function deploy(
        bytes32 salt,
        string calldata name,
        string calldata symbol,
        address creator,
        uint256 totalTokens,
        uint256 saleGoal,
        uint8 creatorShare
    ) external returns (address deployed) {
        if (msg.sender != factory) revert NotFactory();

        bytes memory bytecode = _bytecode(name, symbol, creator, totalTokens, saleGoal, creatorShare);

        assembly {
            deployed := create2(0, add(bytecode, 32), mload(bytecode), salt)
            if iszero(extcodesize(deployed)) { deployed := 0 }
        }
        if (deployed == address(0)) revert DeploymentFailed();
    }
}
