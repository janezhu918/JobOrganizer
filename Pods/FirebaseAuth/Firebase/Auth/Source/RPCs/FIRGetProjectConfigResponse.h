/*
 * Copyright 2017 Google
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#import <Foundation/Foundation.h>

#import "FIRAuthRPCResponse.h"

<<<<<<< HEAD
=======
NS_ASSUME_NONNULL_BEGIN

>>>>>>> refs/remotes/origin/master
/** @class FIRGetProjectConfigResponse
    @brief Represents the response from the getProjectConfig endpoint.
 */
@interface FIRGetProjectConfigResponse : NSObject <FIRAuthRPCResponse>

/** @property projectID
    @brief The unique ID pertaining to the current project.
 */
@property(nonatomic, strong, readonly, nullable) NSString *projectID;

/** @property authorizedDomains
    @brief A list of domains whitelisted for the current project.
 */
@property(nonatomic, strong, readonly, nullable) NSArray *authorizedDomains;

@end
<<<<<<< HEAD
=======

NS_ASSUME_NONNULL_END
>>>>>>> refs/remotes/origin/master
