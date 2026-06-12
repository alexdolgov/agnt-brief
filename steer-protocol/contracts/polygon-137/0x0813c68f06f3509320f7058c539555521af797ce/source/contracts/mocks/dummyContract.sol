// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.8.12;
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "../interfaces/IGasVault.sol";
import "../interfaces/IImplementation.sol";

// Created just to have something to run orchestrator actions on so testing is easy
contract DummyContract is
    Initializable,
    OwnableUpgradeable,
    UUPSUpgradeable,
    IImplementation
{
    uint256 public num;
    uint256[] public gasInTransaction;
    IGasVault public gasVault;

    function changeNum(uint256 newNum) public {
        assert(newNum != 196);
        num = newNum;
    }

    function initialize(
        address,
        address,
        address _steer,
        address,
        bytes calldata
    ) public initializer {
        __UUPSUpgradeable_init();
        __Ownable_init();
        _transferOwnership(_steer);
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal override onlyOwner {}

    function recordGas() public {
        gasInTransaction.push(gasleft());
    }

    function setNumTo50() public {
        num = 50;
    }

    function setNumToMultiple(uint256 firstNum, uint256 secondNum) external {
        num = firstNum * secondNum;
    }
}
