// SPDX-License-Identifier: AGPL-3.0-or-later

pragma solidity =0.7.6;

interface IPoolMaster {
    function isPool(address) external view returns (bool);
}

contract FeeRegistryV3 {
    /// @dev Whether a fee sender is whitelisted.
    //mapping(address => bool) public isSenderWhitelisted;

    //event SetSenderWhitelisted(address indexed sender, bool indexed isWhitelisted);

    /// @dev Returns whether the address is a valid fee sender.
    function isFeeSender(address sender) external view returns (bool) {
        //return IPoolMaster(master).isPool(sender) || isSenderWhitelisted[sender];

        // Linea V3
        if (IPoolMaster(0xBc632B9683a63ac6fa10cacE8a48491f065963dB).isPool(sender)) {
            return true;
        }

        // Linea V1
        if (IPoolMaster(0x608Cb7C3168427091F5994A45Baf12083964B4A3).isPool(sender)) {
            return true;
        }

        // Linea V2
        if (IPoolMaster(0xeE8790cE315c0871ec612f0A6EbB5471A955b3A0).isPool(sender)) {
            return true;
        }

        // Vault
        if (sender == 0x7160570BB153Edd0Ea1775EC2b2Ac9b65F1aB61B) {
            return true;
        }

        return false;
    }

    /*
    /// @dev Whitelists a fee sender explicitly.
    function setSenderWhitelisted(address sender, bool isWhitelisted) external onlyOwner {
        require(sender != address(0), "Invalid address");
        require(isSenderWhitelisted[sender] != isWhitelisted, "Already set");
        isSenderWhitelisted[sender] = isWhitelisted;
        emit SetSenderWhitelisted(sender, isWhitelisted);
    }
    */
}