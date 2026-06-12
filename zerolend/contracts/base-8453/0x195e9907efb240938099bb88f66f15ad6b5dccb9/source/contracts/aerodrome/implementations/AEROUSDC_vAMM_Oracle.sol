// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Aerodrome_vAMM_Oracle} from "../Aerodrome_vAMM_Oracle.sol";

contract AEROUSDC_vAMM_Oracle is Aerodrome_vAMM_Oracle {
    constructor()
        Aerodrome_vAMM_Oracle(
            0x6cDcb1C4A4D1C3C6d054b27AC5B77e89eAFb971d, // USDC/AERO LP Pool
            0x7e860098F58bBFC8648a4311b374B1D669a2bc6B, // USDC Chainlink Feed
            0x4EC5970fC728C5f65ba413992CD5fF6FD70fcfF0 // AERO Chainlink Feed
        )
    {
        // nothing
    }
}
