// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../interfaces/IBridgeProvider.sol";

contract BeraPseudoBridge is IBridgeProvider {
    using SafeERC20 for IERC20;

    struct BridgeStorage {
        address assetReceiver;
    }

    bytes32 internal constant BRIDGE_STORAGE_SLOT =
        keccak256(abi.encode(uint256(keccak256("app.cian.steth-bridge.bera.storage")) - 1)) & ~bytes32(uint256(0xff));

    function getBridgeStorage() internal pure returns (BridgeStorage storage store) {
        bytes32 slot = BRIDGE_STORAGE_SLOT;
        assembly {
            store.slot := slot
        }
    }

    function initBridge(bytes memory _data) external {
        (address assetReceiver) = abi.decode(_data, (address));
        getBridgeStorage().assetReceiver = assetReceiver;
    }

    function uninitBridge() external {
        // Wipe BridgeStorage
        BridgeStorage storage store = getBridgeStorage();
        store.assetReceiver = address(0);
    }

    function strategy(uint256 index) external view override returns (address) {
        return getBridgeStorage().assetReceiver;
    }

    function strategiesLength() external view override returns (uint256) {
        return 1;
    }

    function strategies() external view override returns (address[] memory) {
        address[] memory result = new address[](1);
        result[0] = getBridgeStorage().assetReceiver;
        return result;
    }

    function _addStrategy(address _strategy) internal {
        getBridgeStorage().assetReceiver = _strategy;
    }

    function addStrategy(address _strategy) external {
        _addStrategy(_strategy);
    }

    function removeStrategy(address _strategy) external {
        getBridgeStorage().assetReceiver = address(0);
    }

    function bridgeToAddress(address _token, address _to, uint256 _amount, bytes memory) external payable override {
        // Check if _to is allowed strategy
        require(getBridgeStorage().assetReceiver == _to, "BeraPseudoBridge: invalid strategy");
        IERC20(_token).transfer(_to, _amount);
    }

    function receiveBridged(address, address, uint256, bytes memory _extraPayload) external payable override {
        // Do nothing
    }
}