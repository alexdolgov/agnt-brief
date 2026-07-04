// SPDX-License-Identifier: -- BCOM --

pragma solidity =0.8.25;

import "./SimpleFarm.sol";

error EmptyClone();
error EmptyImplementation();

address constant ZERO_ADDRESS = address(0x0);

library Factory {

    function clone(
        address _implementation
    )
        external
        returns (address instance)
    {
        assembly {
            mstore(0x00, 0x3d602d80600a3d3981f3)
            mstore(0x14, shl(0x60, _implementation))
            mstore(0x28, 0x5af43d82803e903d91602b57fd5bf3)
            instance := create(0, 0x09, 0x37)
        }

        if (instance == ZERO_ADDRESS) {
            revert EmptyClone();
        }
    }

    function _cloneDeterministic(
        address _implementation,
        bytes32 _salt
    )
        private
        returns (address instance)
    {
        assembly {
            mstore(0x00, 0x3d602d80600a3d3981f3)
            mstore(0x14, shl(0x60, _implementation))
            mstore(0x28, 0x5af43d82803e903d91602b57fd5bf3)
            instance := create2(0, 0x09, 0x37, _salt)
        }

        if (instance == ZERO_ADDRESS) {
            revert EmptyClone();
        }
    }

    function _predictDeterministicAddress(
        address _implementation,
        bytes32 _salt,
        address _deployer
    )
        internal
        pure
        returns (address predicted)
    {
        assembly {
            mstore(0x00, 0x3d602d80600a3d3981f3)
            mstore(0x14, shl(0x60, _implementation))
            mstore(0x28, 0x5af43d82803e903d91602b57fd5bf3)
            mstore(0x37, _salt)
            mstore(0x57, _deployer)
            mstore(0x77, keccak256(0x09, 0x57))
            mstore(0x00, keccak256(0x00, 0x77))
            predicted := mload(0x00)
        }
    }

    function _predictDeterministicAddress(
        address _implementation,
        bytes32 _salt
    )
        internal
        view
        returns (address predicted)
    {
        return _predictDeterministicAddress(
            _implementation,
            _salt,
            address(this)
        );
    }
}

abstract contract Context {

    function _msgSender()
        internal
        view
        returns (address)
    {
        return msg.sender;
    }

    function _msgData()
        internal
        pure
        returns (bytes calldata)
    {
        return msg.data;
    }
}

abstract contract Ownable is Context {

    address private _owner;

    event OwnershipTransferred(
        address indexed previousOwner,
        address indexed newOwner
    );

    constructor() {
        _transferOwnership(
            _msgSender()
        );
    }

    function owner()
        public
        view
        returns (address)
    {
        return _owner;
    }

    modifier onlyOwner() {
        require(
            owner() == _msgSender(),
            "Ownable: INVALID_OWNER"
        );
        _;
    }

    function renounceOwnership()
        public
        onlyOwner
    {
        _transferOwnership(
            ZERO_ADDRESS
        );
    }

    function transferOwnership(
        address _newOwner
    )
        public
        onlyOwner
    {
        if (_newOwner == ZERO_ADDRESS) {
            revert();
        }

        _transferOwnership(
            _newOwner
        );
    }

    function _transferOwnership(
        address _newOwner
    )
        internal
    {
        address oldOwner = _owner;
        _owner = _newOwner;

        emit OwnershipTransferred(
            oldOwner,
            _newOwner
        );
    }
}

contract FarmFactory is Ownable {

    address public implementation;

    event FarmCreated(
        address newFarm
    );

    constructor(
        address _implementation
    ) {
        if (_implementation == ZERO_ADDRESS) {
            revert EmptyImplementation();
        }

        implementation = _implementation;
    }

    function changeImplementation(
        address _newImplementation
    )
        external
        onlyOwner
    {
        if (_newImplementation == ZERO_ADDRESS) {
            revert EmptyImplementation();
        }

        implementation = _newImplementation;
    }

    function createFarm(
        IERC20 _stakeToken,
        IERC20 _rewardToken,
        uint256 _rewardDuration
    )
        external
        returns (address)
    {
        address farmClone = Factory.clone(
            implementation
        );

        SimpleFarm(farmClone).initialize(
            _stakeToken,
            _rewardToken,
            _rewardDuration,
            msg.sender,
            msg.sender
        );

        emit FarmCreated(
            farmClone
        );

        return farmClone;
    }
}
