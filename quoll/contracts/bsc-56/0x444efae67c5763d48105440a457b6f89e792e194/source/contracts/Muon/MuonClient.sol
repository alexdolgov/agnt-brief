// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;
import "./MuonClientBase.sol";

abstract contract MuonClient is MuonClientBase {
    function __MuonClient_init(uint256 _muonAppId,PublicKey memory _muonPublicKey) internal {
        validatePubKey(_muonPublicKey.x);
        muonAppId = _muonAppId;
        muonPublicKey = _muonPublicKey;
    }
}