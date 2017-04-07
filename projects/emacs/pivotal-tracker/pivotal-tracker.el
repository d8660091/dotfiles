;;; pivotal-tracker.el --- Pivotal tracker integration

;; Copyright (C) 2011 Free Software Foundation, Inc.

;; Author: Xu Deng <d8660091@gmail.com>
;; Version: 0.1
;; Package-Requires: ((request "0.3.0") (dash "2.13.0"))
;; Keywords: pivotal tracker

;;; Commentary:

;; This package provides some useful functions to communicate with pivotal tracker server, so you don't have to go to the browser

;;; Code:
(-map (lambda (n) (* n n)) '[1 2 3 4])
;;;###autoload
(defcustom pivotal-tracker-api-token ""
  "API token, which can be found at www.pivotaltracker.com/profile."
  :group 'pivotal-tracker
  :type 'string)

(defconst pivotal-tracker-base-url "https://www.pivotaltracker.com/services/v5")

(defun pivotal-tracker-list-projects ()
  "List all projects for the current user."
  (request
   (concat pivotal-tracker-base-url "/me")
   :headers `(("X-TrackerToken" . ,pivotal-tracker-api-token))
   :parser 'json-read
   :error
   (cl-function (lambda (&rest args &key error-thrown &allow-other-keys)
                  (message "Got error: %S" error-thrown)))
   :success (function*
             (lambda (&key data &allow-other-keys)
               (message "I got: %S"
                        (-sort (lambda (a b)
                                 (> (float-time (date-to-time (assoc-default 'last_viewed_at a)))
                                    (float-time (date-to-time (assoc-default 'last_viewed_at b)))))
                               (-map (lambda (v) `(,(assoc 'project_name v)
                                                   ,(assoc 'project_id v)
                                                   ,(assoc 'last_viewed_at v)))
                                     (assoc-default 'projects data)))
                        ))))
  )

(defun pivotal-track-set-project (arg)
  "Set the active project."
  (interactive)
  )


(with-output-to-temp-buffer "foo"
    (print 20)
    (print standard-output))

(provide 'pivotal-tracker)
;;; pivotal-tracker.el ends here
