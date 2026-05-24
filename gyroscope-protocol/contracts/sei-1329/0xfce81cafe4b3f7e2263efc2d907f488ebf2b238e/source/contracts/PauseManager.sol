// SPDX-License-Identifier: LicenseRef-Gyro-1.0
// for information on licensing please see the README in the GitHub repository <https://github.com/gyrostable/concentrated-lps>.
pragma solidity 0.7.6;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Address.sol";
import "@openzeppelin/contracts/utils/EnumerableSet.sol";

contract PauseManager is Ownable {
    using Address for address;
    using EnumerableSet for EnumerableSet.AddressSet;
    using EnumerableSet for EnumerableSet.Bytes32Set;

    event ManagerAdded(address indexed manager);
    event ManagerRemoved(address indexed manager);
    event SelectorWhitelisted(bytes4 indexed selector);
    event SelectorUnwhitelisted(bytes4 indexed selector);

    EnumerableSet.AddressSet internal _managers;
    EnumerableSet.Bytes32Set internal _whitelistedSelectors;

    function addManager(address _manager) external onlyOwner {
        _managers.add(_manager);
        emit ManagerAdded(_manager);
    }

    function removeManager(address _manager) external onlyOwner {
        _managers.remove(_manager);
        emit ManagerRemoved(_manager);
    }

    function whitelistSelector(bytes4 _selector) external onlyOwner {
        _whitelistedSelectors.add(_selector);
        emit SelectorWhitelisted(_selector);
    }

    function unwhitelistSelector(bytes4 _selector) external onlyOwner {
        _whitelistedSelectors.remove(_selector);
        emit SelectorUnwhitelisted(_selector);
    }

    function listWhitelistedSelectors() external view returns (bytes4[] memory) {
        uint256 length = _whitelistedSelectors.length();
        bytes4[] memory selectors = new bytes4[](length);
        for (uint256 i = 0; i < length; i++) {
            selectors[i] = bytes4(_whitelistedSelectors.at(i));
        }
        return selectors;
    }

    function listManagers() external view returns (address[] memory) {
        uint256 length = _managers.length();
        address[] memory managers = new address[](length);
        for (uint256 i = 0; i < length; i++) {
            managers[i] = _managers.at(i);
        }
        return managers;
    }

    function executeAction(address target, bytes calldata data) external returns (bytes memory) {
        bytes4 selector = _getSelector(data);
        if (_whitelistedSelectors.contains(selector)) {
            require(msg.sender == owner() || _managers.contains(msg.sender), "PauseManager: not owner or manager");
        } else {
            require(msg.sender == owner(), "PauseManager: not owner");
        }
        return target.functionCall(data);
    }

    function _getSelector(bytes memory _calldata) internal pure returns (bytes4 out) {
        assembly {
            out := and(mload(add(_calldata, 32)), 0xFFFFFFFF00000000000000000000000000000000000000000000000000000000)
        }
    }
}
